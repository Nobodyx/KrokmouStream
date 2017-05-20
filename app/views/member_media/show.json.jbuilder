json.member_media(@member_media) do |member_medium|
  json.user_id member_medium.user_id
  json.member_media_id member_medium.Member_Media_ID
  json.media member_medium.Media
  json.media_id_selected @medium.id
  if @medium.id == member_medium.Media_ID
    json.current_season member_medium.current_season
    json.current_episode member_medium.current_episode
    json.done member_medium.Done
  end
end

json.current_user current_user.id
json.current_size_member_media @member_media.count
json.media_id @medium.id
