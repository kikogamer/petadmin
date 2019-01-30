class CreateServiceSchedulings < ActiveRecord::Migration[5.0]
  def change
    create_table :service_schedulings do |t|
      t.date :date
      t.time :time
      t.integer :status
      t.decimal :total
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
