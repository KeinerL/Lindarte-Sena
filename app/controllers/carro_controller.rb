class CarroController < ApplicationController
    def index
        carro = Carro.all
        render json: carro
    end
    def show
        carro = Carro.find(params[:id])
        render json: carro
    end
end
