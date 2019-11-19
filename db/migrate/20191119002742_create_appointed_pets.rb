class CreateAppointedPets < ActiveRecord::Migration[5.2]
  def change
    create_table :appointed_pets do |t|
      t.references :appointment, foreign_key: true
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
