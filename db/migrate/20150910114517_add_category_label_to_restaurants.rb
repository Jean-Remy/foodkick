class AddCategoryLabelToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :cat_label, :string
  end
end
