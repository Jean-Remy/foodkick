class AddPreftypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :italian, :boolean
    add_column :users, :french, :boolean
    add_column :users, :japanese, :boolean
    add_column :users, :thai, :boolean
    add_column :users, :viet, :boolean

    add_column :users, :bastille, :boolean
    add_column :users, :notre_dame, :boolean
    add_column :users, :marais, :boolean
    add_column :users, :villette, :boolean
    add_column :users, :abbesses, :boolean
  end
end
