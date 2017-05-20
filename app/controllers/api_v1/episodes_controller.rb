class ApiV1::EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  rescue ActiveRecord::RecordNotFound => ex
    render json: {error: ex.messager }, status: not_found
  end
end
