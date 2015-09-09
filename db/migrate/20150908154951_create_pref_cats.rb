class CreatePrefCats < ActiveRecord::Migration
  def change
    create_table :pref_cats do |t|
      t.references :user, index: true, foreign_key: true
      t.string :category

      t.timestamps null: false
    end
  end
end
