class AddSeedPictureToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :seed_picture, :string
  end
end
