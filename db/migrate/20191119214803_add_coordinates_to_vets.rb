class AddCoordinatesToVets < ActiveRecord::Migration[5.2]
  def change
    add_column :vets, :latitude, :float
    add_column :vets, :longitude, :float
  end
end
