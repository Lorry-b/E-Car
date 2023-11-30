class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def profile
  end

  def profile_owner
    @booking = Booking.all
  end
end
