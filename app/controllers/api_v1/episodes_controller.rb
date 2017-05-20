class ApiV1::EpisodesController < ActionController::Base
  def index
    @episodes = Episode.all

    respond_to do |format|
      format.json do
        @episodes = Episode.all
      end
    end
  end

  def show
    @episode = Episode.find(params[:Episode_ID])
  rescue ActiveRecord::RecordNotFound => ex
    render json: {error: ex.messager }, status: not_found
  end
end
