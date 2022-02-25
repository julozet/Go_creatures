class ReservationsController < ApplicationController
  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @creature = Creature.find(params[:creature_id])
  end

  def create
    @creature = Creature.find(params[:creature_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.creature_id = @creature.id
    @reservation.status = "pending"
    if @reservation.save
      redirect_to creature_path(@creature)
    else
      redirect_to creature_path(@creature)
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.delete
    redirect_to dashboard_path
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.status = "accepted"
    @reservation.save
    redirect_to dashboard_path
  end

  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.delete
  end

  private

  def reservation_params
    params.require(:reservation).permit(:starting_date, :ending_date)
  end
end
