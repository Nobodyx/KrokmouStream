class MemberMediaController < ApplicationController
	def index
        @media = Medium.all
		@member_media = MemberMedia.all
	end
    
    def show
        @member_medium = MemberMedia.find(params[:id])
        @medium = Medium.where(["id = ?", @member_medium.Media]).first
    end
    
    def new
        @medium = Medium.find(params[:medium_id])
        MemberMedia.create!(user_id: current_user.id,
            Member_Media_ID: 1,
            Media: @medium.Media_ID,
            current_season: 0,
            current_episode: 0,
            Done: false)        
        redirect_to member_media_path
    end
    
    #def update(id,season_number,episode_number)
        #MemberMedia.update(id, :current_season => season_number, :current_episode => episode_number)
        #redirect_to member_media_path
    #end
    
    def update
        MemberMedia.update(member_medium_params)
        redirect_to member_medium_path
    end
    
    def member_medium_params
        params.require(:member_media).permit(:id, :current_season, :current_episode)
    end
end