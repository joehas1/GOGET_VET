class AddRateToVets < ActiveRecord::Migration[5.2]
  def change
    add_column :vets, :rate, :integer
  end
end
