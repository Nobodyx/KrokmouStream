class ApiV1::EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
  end
end
