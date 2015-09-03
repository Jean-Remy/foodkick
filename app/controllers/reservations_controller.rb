require 'securerandom'

class ReservationsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create]
  before_action :find_codes

  def index
    # @reservations = policy_scope(Reservation)
    @reservations = Reservation.where(restaurant_id: params[:restaurant_id])
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
        redirect_to  codes_path
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
    @reservation = Reservation.where(code: params[:code])
    if Reservation.exists?(code: params[:code])
      @reservation.first.status = true
      @reservation.first.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def codes
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def find_codes
    @my_codes = Reservation.where(user_id: current_user.id)
  end
end
