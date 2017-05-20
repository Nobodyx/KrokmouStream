json.member_media(MemberMedia.all) do |member_medium|
  json.user_id member_medium.user_id
  json.member_media_id member_medium.Member_Media_ID
  json.media member_medium.Media
  json.media_id_selected @medium.id
  if @medium.id == member_medium.Media
    json.current_season member_medium.current_season
    json.current_episode member_medium.current_episode
    json.done member_medium.Done
  end
end

json.current_user current_user.id
json.media_id @medium.id
