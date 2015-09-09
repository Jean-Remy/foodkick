class CreatePrefBoroughs < ActiveRecord::Migration
  def change
    create_table :pref_boroughs do |t|
      t.references :user, index: true, foreign_key: true
      t.string :borough

      t.timestamps null: false
    end
  end
end
