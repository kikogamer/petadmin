class MarketingMailer < ApplicationMailer
  def campaign(client, campaign, campaign_client)
    @body = campaign.body
    
    if (campaign_client.present?)
      @token = campaign_client.token
    end

    mail to: client.email, subject: campaign.title
  end
end