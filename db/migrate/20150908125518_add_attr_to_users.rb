class AddAttrToUsers < ActiveRecord::Migration
  def change
    add_column :users, :chinese, :boolean, default: false
    add_column :users, :indian, :boolean, default: false
    add_column :users, :mexican, :boolean, default: false
    add_column :users, :lebanese, :boolean, default: false

    add_column :users, :odeon, :boolean, default: false
    add_column :users, :saint_germain, :boolean, default: false
    add_column :users, :trocadero, :boolean, default: false
    add_column :users, :quartier_latin, :boolean, default: false
    add_column :users, :republique, :boolean, default: false
    add_column :users, :montmartre, :boolean, default: false
    add_column :users, :champs, :boolean, default: false
  end
end
