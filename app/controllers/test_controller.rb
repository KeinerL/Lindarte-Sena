class TestController < ApplicationController
    def index
        test = Test.all
        render json: test
    end
    def show
        test = Test.find(params[:id])
        render json: test
    end
end
