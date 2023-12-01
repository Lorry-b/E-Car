class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update]

  # def new
  #   @booking = Booking.new
  #   @car = Car.find(params[:car_id])
  #   @booking.car = @car
  # end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @user = current_user
    @booking.car = @car
    @booking.user = @user
    if @booking.save
      redirect_to profile_path, notice: "Booking request sent" #TODO change the redirect path to profile
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    validate_owner!
  end

  def update
    validate_owner!
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date, :status)
  end

  def validate_owner!
    if @booking.car.user != current_user
      redirect_to cars_path, alert: "You're not the owner of the car."
    end
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
