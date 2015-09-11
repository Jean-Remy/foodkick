class FeedbacksController < ApplicationController
  before_action :find_restaurant

  def index
    @feedbacks = Feedback.where(:user_id == current_user.id)
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.user_id = current_user.id
    @reservation = Reservation.where({ user_id: current_user.id, restaurant_id: @restaurant.id }).first
    @feedback.reservation_id = @reservation.id
    if @feedback.save
      @reservation.feedbacked = true
      @reservation.save
      redirect_to root_path, notice: "Merci pour ton feedback !"
    else
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:general_exp, :general_exp_rating, :food, :food_rating, :service, :service_rating, :quality_to_price, :quality_to_price_rating, :vibes, :vibes_rating)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
