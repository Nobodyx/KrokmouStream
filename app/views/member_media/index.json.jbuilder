json.member_media(@member_media) do |member_medium|
  if member_medium.user_id == current_user.id
    json.user_id member_medium.user_id
    json.member_media_id member_medium.Member_Media_ID
    json.media member_medium.Media
    json.current_season member_medium.current_season
    json.current_episode member_medium.current_episode
    json.done member_medium.Done

    json.medium(member_media.medium) do |medium|
      json.title medium.Title
    end
  end
end
