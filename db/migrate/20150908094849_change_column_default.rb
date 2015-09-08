class ChangeColumnDefault < ActiveRecord::Migration
  def change
    change_column :users, :italian, :boolean, default: false
    change_column :users, :french, :boolean, default: false
    change_column :users, :japanese, :boolean, default: false
    change_column :users, :thai, :boolean, default: false
    change_column :users, :viet, :boolean, default: false
    change_column :users, :bastille, :boolean, default: false
    change_column :users, :notre_dame, :boolean, default: false
    change_column :users, :marais, :boolean, default: false
    change_column :users, :villette, :boolean, default: false
    change_column :users, :abbesses, :boolean, default: false
  end

end
