class AddCanBookToUsers < ActiveRecord::Migration
  def change
    add_column :users, :can_book, :boolean
  end
end
