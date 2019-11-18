class CreateVets < ActiveRecord::Migration[5.2]
  def change
    create_table :vets do |t|
      t.string :address
      t.string :availability
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
