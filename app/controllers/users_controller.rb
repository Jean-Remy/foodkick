class UsersController < ApplicationController
  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def codes
    @my_codes = Reservation.where(:user_id => current_user.id)
  end
end
