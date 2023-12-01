class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def profile
  end

  def profile_owner
    @bookings = Booking.all
  end

  # private

  # # def validate_owner!
  # #   if @booking.car.user != current_user
  # #     redirect_to cars_path, alert: "You're not the owner of the car."
  # #   end
  # # end
end
