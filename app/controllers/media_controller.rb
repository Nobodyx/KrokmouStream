require "csv"
class MediaController < ApplicationController
    
    def index
        @media = Medium.all
    end

    def show
        @medium = Medium.find(params[:id])
        if user_signed_in?
            @member_medium = MemberMedia.where(["user_id = ? and medium_id = ?", current_user.id, @medium.id]).first            
        end
    end
end
