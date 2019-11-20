class RenameTypeInPets < ActiveRecord::Migration[5.2]
  def change
    rename_column :pets, :type, :pets_type
  end
end
