class ApiV1::EpisodesController < ActionController::Base
  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  rescue ActiveRecord::RecordNotFound => ex
    render json: {error: ex.messager }, status: not_found
  end
end
