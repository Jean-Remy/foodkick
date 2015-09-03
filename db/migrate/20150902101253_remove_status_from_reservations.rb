class RemoveStatusFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :status
  end
end
