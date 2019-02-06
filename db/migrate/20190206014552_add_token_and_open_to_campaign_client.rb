class AddTokenAndOpenToCampaignClient < ActiveRecord::Migration[5.0]
  def change
    add_column :campaign_clients, :open, :boolean
    add_column :campaign_clients, :token, :string
  end
end
