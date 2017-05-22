module MemberMediaHelper
	def indexMemberMedia
		@media = Medium.all
		@member_media = MemberMedia.all
	end
end
