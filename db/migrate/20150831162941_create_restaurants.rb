class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :borough
      t.string :category
      t.string :owner_first_name
      t.string :owner_last_name
      t.string :owner_phone
      t.string :restaurant_phone
      t.string :email
      t.text :description
      t.integer :price_min
      t.integer :price_max
      t.float :discount
      t.string :discount_detail
      t.string :menu_title

      t.timestamps null: false
    end
  end
end
