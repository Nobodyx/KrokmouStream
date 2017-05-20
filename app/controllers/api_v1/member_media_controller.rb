class ApiV1::MemberMediaController < ApplicationController
  acts_as_token_authentication_handler_for User

  def index
    @member_media = MemberMedia.find(:all, :user_id => 1)
  end
end
