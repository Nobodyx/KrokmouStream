class MemberMediaController < ApplicationController
	def index
		@member_media = MemberMedia.all
	end
    
    def new
        @medium = Medium.find(params[:medium_id])
        MemberMedia.create!(user_id: current_user.id,
            Member_Media_ID: 1,
            Media: @medium.Media_ID,
            current_season: 0,
            current_episode: 0,
            Done: false)
        #@new_member_media = MemberMedia.new
        #@new_member_media.user_id = current_user.id
        #@new_member_media.Media = @medium.id
        
        redirect_to member_media_path
    end
end