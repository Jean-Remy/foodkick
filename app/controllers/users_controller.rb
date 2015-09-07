class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user

    @coming_reservations = @user.reservations.where(status: false)
    # authorize @coming_reservations
    @past_reservations = @user.reservations.where(status: true)
    # authorize @past_reservations
  end
end
