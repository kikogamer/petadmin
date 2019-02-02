class Discount < ApplicationRecord
  include Fae::BaseModelConcern
  enum discount_type: { value: 0, percentage: 1 }

  validates :title, uniqueness: true, presence: true
  validates :value, uniqueness: true, presence: true

  def fae_display_field
    title
  end

end
