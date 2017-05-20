class ApiV1::MemberMediaController < ApplicationController
  acts_as_token_authentication_handler_for User

  def index
    @member_media = MemberMedia.all
    @media = Media.all
  end

  def show
    @member_media = MemberMedia.all
    @medium = Medium.where(params[:id])
  rescue ActiveRecord::RecordNotFound => ex
    render json: { error: ex.message }, status: :not_found
  end
end
