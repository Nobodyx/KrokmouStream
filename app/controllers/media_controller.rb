require "csv"
class MediaController < ApplicationController
    
    def index
        @media = Medium.all
    end

    def show
        @medium = Medium.find(params[:id])
        @member_medium = MemberMedia.where(["user_id = ? and \"member_media\".\"Media\" = ?", current_user.id, @medium.id]).first
    end
end
