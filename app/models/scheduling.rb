class Scheduling < ApplicationRecord
  include Fae::BaseModelConcern
  enum status: { pending: 0, finished: 1, canceled: 2 }

  def fae_display_field
    id  
  end

  def self.for_fae_index
    order(:id)
  end

  belongs_to :client
end
