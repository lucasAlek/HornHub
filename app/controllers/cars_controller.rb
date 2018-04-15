class CarsController < ApplicationController
  def index
    @search = Car.search(params[:q])
    # @cars = Car.order(:model).page(params[:page])
    @cars = @search.result.includes(:year).page(params[:page])
    @search.build_condition
  end

  def show
    @car = Car.find(params[:id])
  end

  # def search
  # end

  def has_image
    @cars = Car.where(image: [nil?, '']).order(:make_id).page(params[:page])
  end
end
