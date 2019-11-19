class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date_time
      t.string :description
      t.string :address
      t.boolean :approved
      t.references :vet, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
