class SeasonsController < ApplicationController
    def index
        @seasons = Season.all
    end

    def show
        @seasons = Season.find(params[:medium_id])
    end
end
