class CarsController < ApplicationController
  def index
    @cars = Car.all
    if params[:query].present?
      @cars = @cars.search_by_brand_and_category(params[:query])
    end

    if params[:date_query].present?
      @cars = @cars.where("start_availability <= ? AND end_availability >= ?", params[:date_query].to_datetime, params[:date_query].to_datetime)
    end

    if params[:end_date_query].present?
      @cars = @cars.where("start_availability <= ? AND end_availability >= ?", params[:end_date_query].to_datetime, params[:end_date_query].to_datetime)
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(params_car)
    @car.user = current_user
    if @car.save
      redirect_to cars_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def params_car
    params.require(:car).permit(:brand, :category, :location, :start_availability, :end_availability)
  end
end
