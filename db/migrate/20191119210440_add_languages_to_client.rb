class AddLanguagesToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :languages, :string
  end
end
