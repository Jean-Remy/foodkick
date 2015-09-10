class AddLabelToPrefCat < ActiveRecord::Migration
  def change
    add_column :pref_cats, :label, :string
  end
end
