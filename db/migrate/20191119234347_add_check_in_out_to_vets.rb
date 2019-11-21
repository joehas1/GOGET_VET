class AddCheckInOutToVets < ActiveRecord::Migration[5.2]
  def change
    add_column :vets, :check_in, :integer
    add_column :vets, :check_out, :integer
  end
end
