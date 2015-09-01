class RemoveOwnerNameFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :owner_first_name
    remove_column :restaurants, :owner_last_name
    remove_column :restaurants, :owner_phone
  end
end
