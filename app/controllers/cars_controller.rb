class CarsController < ApplicationController
  def index
    @cars = Car.order(:model).page(params[:page])
  end

  def show
  end

  def alphabetized
    @cars = Car.order(:make_id).page(params[:page])
  end

  def hasImage
    @cars = Car.where(image: [nil?, ""]).order(:make_id).page(params[:page])
  end
end
