class AddLanguagesToVets < ActiveRecord::Migration[5.2]
  def change
    add_column :vets, :languages, :string
  end
end
