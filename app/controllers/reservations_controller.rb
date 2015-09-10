require 'securerandom'

class ReservationsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create, :validate_code, :index]
  before_action :find_codes
  before_action :validate_params, only: [:validate_code]
  before_action :average, only: [:index]

  def index
    # @reservations = policy_scope(Reservation)
    @reservations = Reservation.where(restaurant_id: params[:restaurant_id])

    @number_of_views = @restaurant.views
    @number_of_reservations = @reservations.count
    @number_of_validated_reservations = @reservations.where(status: true).count
    @number_of_feedbacks = @reservations.where(feedbacked: true).count
  end

  def create
    @reservation = Reservation.new
    @reservation.user = current_user
    @reservation.restaurant = @restaurant
    # Le code n'a pas été utilisé
    @reservation.status = false
    # Le feedback n'a pas été rendu
    @reservation.feedbacked = false
    # La date limite du feedback est de deux semaines
    @reservation.limit = Time.now + (2*7*24*60*60)
    # On génère un code aléatoire à 6 caractères, chiffres ou lettres
    @code = SecureRandom.hex(3).upcase
    # On regarde si le code n'existe pas déjà
    unless Reservation.exists?(code: @code)
      # On enregistre le code de réservation
      @reservation.code = @code
      # On empêche l'user d'avoir plusieurs réservations en même temps
      # current_user.can_book = false
      if @reservation.save
        redirect_to codes_path
      else
        redirect_to restaurant_path(@restaurant)
      end
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to codes_path
  end

  def validate
  end

  def validate_code
    if Reservation.exists?(code: params[:code])
      @reservation = Reservation.where(code: params[:code])
      if @reservation.first.restaurant.id == current_user.restaurant_id
        if @reservation.first.status == false
          @reservation = Reservation.where(code: params[:code])
          @reservation.first.status = true
          @reservation.first.save
          redirect_to restaurant_reservations_path(@restaurant.id), notice: "Le code a bien été validé"
        else
          redirect_to restaurant_reservations_path(@restaurant.id), notice: "Oups, le code ne parait pas être valable"
        end
      else
        redirect_to restaurant_reservations_path(@restaurant.id), notice: "Oups, le code ne parait pas être valable"
      end
    else
      redirect_to restaurant_reservations_path(@restaurant.id), notice: "Oups, le code ne parait pas être valable"
    end
  end

  def codes
  end

  private

  def average
    @feedbacks = Feedback.where(:user_id == current_user.id)
    gnlexp = 0
    food = 0
    service = 0
    qualityprice = 0
    vibes = 0
    n = 1
    if  @feedbacks != []
      n = @feedbacks.count.to_f
      @feedbacks.each do |feedback|
        feedback.general_exp_rating ? gnlexp += feedback.general_exp_rating : 0
        feedback.food_rating ? food += feedback.food_rating : 0
        feedback.service_rating ? service += feedback.service_rating : 0
        feedback.quality_to_price_rating ? qualityprice += feedback.quality_to_price_rating : 0
        feedback.vibes_rating ? vibes += feedback.vibes_rating : 0
      end
    end
    @average = [gnlexp/n, food/n, service/n, qualityprice/n, vibes/n]
  end

  def validate_params
    params.permit(:restaurant_id, :code)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def find_codes
    @my_codes = Reservation.where(user_id: current_user.id)
  end
end
