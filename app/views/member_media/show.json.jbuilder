json.member_media(MemberMedia.all) do |member_medium|
  if @medium.id == member_medium.medium_id
    if member_medium.user_id == current_user.id
      json.title @medium.title
      json.current_season member_medium.current_season
      json.current_episode member_medium.current_episode
      json.done member_medium.Done
    end
  end
end