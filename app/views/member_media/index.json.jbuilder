json.member_media(@member_media) do |member_medium|
  json.media member_medium.Media
  json.user_id member_medium.user_id
end

json.current_user_email current_user.email
