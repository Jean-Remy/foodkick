class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :voucher, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @restaurants = policy_scope(Restaurant)
    @markers = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
    end
  end

  def show
    authorize @restaurant
    @reservation = Reservation.new
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

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def voucher
    if user_signed_in?
      @booked = true if Reservation.where(user_id: current_user.id, restaurant_id: params[:id]) != []
    end
  end
end
