class ApiV1::EpisodesController < ApplicationController::Base
  def index
    @episodes = Episode.all
  end
end
