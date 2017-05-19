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
    
    def update
        
    end
end