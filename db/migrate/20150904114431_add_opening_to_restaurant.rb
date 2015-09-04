class AddOpeningToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :opening, :date
  end
end
