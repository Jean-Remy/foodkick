class AddOwnerAndRestaurantToUser < ActiveRecord::Migration
  def change
    add_column :users, :owner, :boolean
    add_reference :users, :restaurant, index: true
  end
end
