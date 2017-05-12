class SeasonsController < ApplicationController
    def show
        @seasons = Season.find(params[:medium_id])
    end
end
