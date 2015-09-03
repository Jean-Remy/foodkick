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
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:answer1, :answer2, :answer3, :answer4, :answer5)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
