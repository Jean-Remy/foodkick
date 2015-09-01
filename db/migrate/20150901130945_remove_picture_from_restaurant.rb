class RemovePictureFromRestaurant < ActiveRecord::Migration
  def change
    remove_column :restaurants, :picture
  end
end
