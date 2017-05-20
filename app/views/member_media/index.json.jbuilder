json.member_media(@member_media) do |member_medium|
  if member_medium.user_id == current_user.id
    json.media member_medium.Media
    json.user_id member_medium.user_id
  end
end

json.current_user_email current_user.email
json.current_user_id current_user.id
