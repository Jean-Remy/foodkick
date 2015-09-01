class ReservationsController < ApplicationController
  def index
    @reservations = policy_scope(Reservation)
  end

  def create

  end

  def destroy

  end
end
