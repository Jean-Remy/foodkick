class AddLabelToPrefBorough < ActiveRecord::Migration
  def change
    add_column :pref_boroughs, :label, :string
  end
end
