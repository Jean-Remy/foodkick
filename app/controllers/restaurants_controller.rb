class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @restaurants = policy_scope(Restaurant)
  end

  def show
    authorize @restaurant
    @reservation = Reservation.new
    @booked = true if Reservation.where(user_id: current_user, restaurant_id: params[:id])
  end

  def new
    @restaurant = Restaurant.new
    authorize @restaurant
  end

  def create


  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
