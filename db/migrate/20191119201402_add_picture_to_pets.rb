class AddPictureToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :picture, :string
  end
end
