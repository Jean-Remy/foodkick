class RenameRestaurantPhone < ActiveRecord::Migration
  def change
    rename_column :restaurants, :restaurant_phone, :phone
  end
end
