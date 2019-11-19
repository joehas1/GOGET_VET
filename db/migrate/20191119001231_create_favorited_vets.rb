class CreateFavoritedVets < ActiveRecord::Migration[5.2]
  def change
    create_table :favorited_vets do |t|
      t.references :vet, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
