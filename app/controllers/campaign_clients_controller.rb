class CampaignClientsController < ApplicationController
  before_action :set_campaign_client_by_token, only: [:opened]

  def opened
    @campaign_client.update(open: true)
    gif = Base64.decode64("R0lGODlhAQABAPAAAAAAAAAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==")
    render text: gif, type: 'image/gif'
    puts @campaign_client.inspect
  end

  private

  def set_campaign_client_by_token
    @campaign_client = CampaignClient.find_by!(token: params[:token])
  end
end
