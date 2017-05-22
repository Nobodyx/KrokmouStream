class MediaController < ApplicationController
    helper MemberMediaHelper
    def index
        @media = Medium.all
    end

    def show
        @medium = Medium.find(params[:id])
    end
end
