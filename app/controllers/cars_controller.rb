class CarsController < ApplicationController
  def index
    @cars = Car.order(:model).page(params[:page])
  end

  def show
  end
end
