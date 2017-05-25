class ApiV1::MemberMediaController < ApplicationController
  acts_as_token_authentication_handler_for User

  def index
    @member_media = MemberMedia.all
    @media = Media.all
  end

  def show
    @medium = Medium.where(params[:id])
  rescue ActiveRecord::RecordNotFound => ex
    render json: { error: ex.message }, status: :not_found
  end

  def update
      MemberMedia.update(params[:id],member_medium_params)
  end

  def member_medium_params
      params.require(:member_media).permit(:current_season, :current_episode)
  end
end
