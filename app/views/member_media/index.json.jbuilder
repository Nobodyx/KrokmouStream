json.member_media(@member_media) do |member_medium|
  if member_medium.user_id == current_user.id
    @media = Medium.find(Media_ID: member_medium.Member_Media_ID)
    json.media(@media) do |medium|
      json.id medium.Media_ID
      json.title medium.Title
      json.type medium.Type
      json.style medium.Style
      json.season medium.Season
      json.director medium.Director
      json.description medium.description
    end
    
    json.media member_medium.Media
    json.user_id member_medium.user_id
  end
end
