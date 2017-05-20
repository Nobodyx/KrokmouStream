class ApiV1::MediaController < ActionController::Base
  def index
    @media = Medium.all
  end
end
