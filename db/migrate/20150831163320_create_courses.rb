class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :category
      t.integer :price
      t.string :name
      t.string :description
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
