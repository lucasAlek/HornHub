class CarsController < ApplicationController
  def index
    @cars = Car.order(:model).page(params[:page])
  end

  def show
  end

  def search
    @query = params[:q]
    @found_items = Year.where('year LIKE ?',"%#{@query}%")

    @found_items = Car.order(:make_id).page(params[:page])

  end

  def hasImage
    @cars = Car.where(image: [nil?, ""]).order(:make_id).page(params[:page])
  end
end
