class CarsController < ApplicationController
  def index
    @cars = Car.order(:model).page(params[:page])
  end

  def show
    @cars = Car.find(params[:id])
  end

  def search
    @query = params[:q]
    if params[:category_id].blank?
       # @found_items =  Car.where("year_id  LIKE ?',%#{@query}%")
    else
      car = Car.where(params[:year_id])
      # @found_items = car
    end
    @found_items =  Car.all
    #Car.order(:make_id).page(params[:page])

  end

  def hasImage
    @cars = Car.where(image: [nil?, ""]).order(:make_id).page(params[:page])
  end
end
