class PrintController < ApplicationController
  def index
    @cars = Car.all
  end

  def options
    fetch_cars
  end

  def pdf
    fetch_cars
  end

  private
  def fetch_cars
    if params.has_key?(:cars)
      @cars = params[:cars]
    else
      redirect_to action: 'index', error: "nocars"
    end
  end
end
