class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :destroy]
  before_action :voucher, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pref_borough = PrefBorough.uniq
    @pref_cat = PrefCat.uniq
    if params[:ar_id]
      @restaurants = policy_scope(Restaurant.where(zip_code: params[:ar_id]))
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
    if user_signed_in?
      if current_user.restaurant_id != @restaurant.id
        @restaurant.views += 1
        @restaurant.save
      end
    else
      @restaurant.views += 1
      @restaurant.save
    end
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
    set_restaurant(:restaurant_id)
    if @restaurant.update(edit_params(:seed_picture))
      redirect_to restaurant_path(@restaurant), notice: 'Votre image a été changé avec succès'
    else
      redirect_to restaurant_path(@restaurant), notice: "Oups ! Ca n'a pas marché"
    end
  end

  def update_description
    set_restaurant(:restaurant_id)
    if @restaurant.update(edit_params(:description))
      redirect_to restaurant_path(@restaurant), notice: 'Votre description a été changée avec succès'
    else
      redirect_to restaurant_path(@restaurant), notice: "Oups ! Ca n'a pas marché"
    end
  end

  private

  def edit_params(param)
    params.require(:restaurant).permit(:restaurant_id, param)
  end

  def set_restaurant(id = :id)
    @restaurant = Restaurant.find(params[id])
  end

  def voucher
    if user_signed_in?
      @booked = true if Reservation.where(user_id: current_user.id, restaurant_id: params[:id]) != []
    end
  end
end
