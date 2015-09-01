class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @restaurants = policy_scope(Restaurant)
  end

  def show

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
end
