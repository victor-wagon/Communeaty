class ReservationsController < ApplicationController
  def index
    authorize @reservations = Reservation.all
  end

  def new
    authorize @reservation = Reservation.new
  end

  def create
    authorize @reservation = Reservation.new(reservation_params)
    @reservation.meal = Meal.find(params[:meal_id])
    @reservation.user = current_user
    if @reservation.save
      redirect_to meal_path(@reservation.meal.id)
    else
      render 'new'
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :meal_id, :approved)
  end
end
