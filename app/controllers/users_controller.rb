class UsersController < ApplicationController
  before_action :set_user
  def show
    @coming_from_reservation = true if params[:coming_from_reservation]
    authorize @user
    @restaurants = Restaurant.all.take(6)
  end

  def edit
  end

  def update
    @user.update(user_params) #définir les parametres qui peuvent etre updates
    if @user.save
      # redirect_to user_path(@user.id)
      redirect_to root_path
    else
      render :new
    end
  end

  def preferences
    raise
  end

  private

  def update_params
    params(:user)
  end

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :picture, :italian, :french, :viet, :japanese, :thai, :bastille, :notre_dame, :marais, :villette, :abbesses)
  end

end
