class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :day_num
      t.string :day_name
      t.time :opening_hour
      t.time :closing_hour
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
