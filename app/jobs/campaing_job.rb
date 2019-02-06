class CampaingJob < ApplicationJob
  queue_as :emails

  def perform(client, campaign, campaign_client)
    MarketingMailer.campaign(client, campaign, campaign_client).deliver_now
  end
end
