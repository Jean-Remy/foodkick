class AddViewsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :views, :integer, default: 0
  end
end
