class CreateClientAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :client_addresses do |t|
      t.references :client, foreign_key: true
      t.string :street
      t.string :city
      t.string :state
      t.string :Zip

      t.timestamps
    end
  end
end
