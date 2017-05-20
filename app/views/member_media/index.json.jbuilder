json.member_media(@member_media) do |member_medium|
  if member_medium.user_id == current_user.id
    json.user_id member_medium.user_id
    json.medium_id member_medium.medium_id
    json.current_season member_medium.current_season
    json.current_episode member_medium.current_episode
    json.done member_medium.Done

    json.medium(@media) do |medium|
      if medium.id == member_medium.medium_id
        json.id medium.id
        json.title medium.title
        json.type medium.style
        json.style medium.genre
        json.season medium.season
        json.director medium.director
        json.description medium.description
      end
    end
  end
end
