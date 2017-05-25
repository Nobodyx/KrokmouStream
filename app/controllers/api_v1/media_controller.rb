class ApiV1::MediaController < ActionController::Base

  # media.json renvoi tous les médias

  def index
    @media = Medium.all
  end
end
