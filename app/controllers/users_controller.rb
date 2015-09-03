class UsersController < ApplicationController
  def show
  end

  def codes
    @my_codes = Reservation.where(:user_id => current_user.id)
  end
end
