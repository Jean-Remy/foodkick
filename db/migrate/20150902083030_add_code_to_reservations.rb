class AddCodeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :feedbacked, :boolean
    add_column :reservations, :limit, :datetime
  end
end
