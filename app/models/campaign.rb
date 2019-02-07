class Campaign < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, presence: true
  validates :body, presence: true

  has_many :campaign_clients
  has_many :clients, through: :campaign_clients

  after_save :schedule_emails

  def fae_display_field
    title
  end

  def emails_lidos
    CampaignClient.where(campaign: self, open: true).count
  end

  def total_emails
    CampaignClient.where(campaign: self).count
  end

  def schedule_emails
    Client.all.each do |client|
      campaign_client = CampaignClient.create(campaign: self, client: client)
      CampaingJob.perform_later client, self, campaign_client
    end
  end

end
