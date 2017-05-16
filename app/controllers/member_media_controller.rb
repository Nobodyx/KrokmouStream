class MemberMediaController < ApplicationController
	def index
		@member_media = MemberMedia.all
	end
end
