class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
    @booking.car = @car
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @user = current_user
    @booking.car = @car
    @booking.user = @user
    if @booking.save
      redirect_to root_path, notice: "Booking request sent" #TODO change the redirect path to profile
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
