class Scheduling < ApplicationRecord
  include Fae::BaseModelConcern
  enum status: { pending: 0, finished: 1, canceled: 2 }

  validates :client, presence: true

  belongs_to :client
  
  has_many :scheduling_services, dependent: :destroy
  has_many :services, through: :scheduling_services

  before_save :set_total

  def fae_display_field
    id  
  end

  def self.for_fae_index
    order(:id)
  end

  private

  def set_total
    total = 0
    self.services.each {|s| total += s.price }
    
    total = (total >= 0) ? total : 0
    self.total = total
  end
end
