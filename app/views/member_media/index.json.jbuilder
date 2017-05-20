json.member_media(@member_media) do |member_medium|
  if member_medium.user_id == current_user.id
    json.user_id member_medium.user_id
    json.member_media_id member_medium.Member_Media_ID
    json.media member_medium.Media
    json.current_season member_medium.current_season
    json.current_episode member_medium.current_episode
    json.done member_medium.Done

    json.medium(@media) do |medium|
      if medium.Media_ID == member_medium.Media
        json.id medium.Media_ID
        json.title medium.Title
        json.type medium.Type
        json.style medium.Style
        json.season medium.Season
        json.director medium.Director
        json.description medium.description
      end
    end
  end
end
