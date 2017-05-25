class ApiV1::MemberMediaController < ApplicationController
  acts_as_token_authentication_handler_for User

  # member_media.json renvoi tous les member_media pour l'utilisateur connecté

  def index
    @member_media = MemberMedia.all
    @media = Media.all
  end

  # member_media/[id].json renvoi le member_media à l'id choisie pour l'utilisateur connecté

  def show
    @medium = Medium.where(params[:id])
  rescue ActiveRecord::RecordNotFound => ex
    render json: { error: ex.message }, status: :not_found
  end

  # l'update permet une requête POST pour changer le current_episode et current_season d'un member_media

  def update
    MemberMedia.update(params[:id],member_medium_params)
    render :show, status: :updated
  end

  def member_medium_params
    params.require(:member_media).permit(:current_season, :current_episode)
  end
end
