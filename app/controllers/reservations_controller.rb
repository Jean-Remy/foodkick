require 'securerandom'

class ReservationsController < ApplicationController
  before_action :find_restaurant, only: [:new]

  def index
    # @reservations = policy_scope(Reservation)
    @reservations = Reservation.where(restaurant_id: params[:restaurant_id])
  end

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
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
      redirect_to root_path
      else
        render :new
      end
    end
  end

  def destroy

  end

  def validate

  end

  def validate_code
    @reservation = Reservation.where(code: params[:code])
    if Reservation.exists?(code: params[:code])
      @reservation.first.status = true
      @reservation.first.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def reservation_params
    params.require(:reservation).permit(:user_id, :restaurant_id)
  end
end
