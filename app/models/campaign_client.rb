class CampaignClient < ApplicationRecord
  before_save :set_token
  
  belongs_to :campaign
  belongs_to :client

  private

  def set_token
    if !self.token.present?
      self.open = false
      
      self.token = loop do
        random_token = SecureRandom.urlsafe_base64(nil, false)
        break random_token unless CampaignClient.exists?(token: random_token)
      end
    end
  end 
end
