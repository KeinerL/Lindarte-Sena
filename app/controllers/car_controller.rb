class CarController < ApplicationController
    def index
        cars = Car.all
        render json: cars
    end
    def show
        cars = Car.find(params[:id])
        render json: cars
    end
end
