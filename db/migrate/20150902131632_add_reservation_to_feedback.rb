class AddReservationToFeedback < ActiveRecord::Migration
  def change
    add_reference :feedbacks, :reservation, index: true, foreign_key: true
  end
end
