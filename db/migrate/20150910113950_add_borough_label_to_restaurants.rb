class AddBoroughLabelToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :borough_label, :string
  end
end
