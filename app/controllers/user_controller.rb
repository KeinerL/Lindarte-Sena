class UserController < ApplicationController
    def index
        users = User.all
        render json: users
    end
    def show
        users = User.find(params[:id])
        render json: users
    end
end
