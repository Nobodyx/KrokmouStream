# On va chercher le member_media à l'id donné dans la requête,
# si l'id de l'utilisateur connecté est bien celui du member_media,
# on affiche le résultat

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
