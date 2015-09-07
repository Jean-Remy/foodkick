class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update_picture, :destroy]
  before_action :voucher, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index

    if params[:ar_id]
      @restaurants = policy_scope(Restaurant)
      @restaurants = Restaurant.where(zip_code: params[:ar_id])
    else
      @restaurants = policy_scope(Restaurant)
    end
    @markers = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude

      #marker.picture(url: view_context.image_path('toc.png'), width: 35, height: 70 )
    end

    @markers.select! { |hash| hash[:lat] != nil && hash[:lng] != nil }
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

  def update_picture
    @restaurant.update(params[:restaurant])
  end

  private

  def picture_params
    params.require(:restaurant).permit(:seed_picture)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def voucher
    if user_signed_in?
      @booked = true if Reservation.where(user_id: current_user.id, restaurant_id: params[:id]) != []
    end
  end
end
