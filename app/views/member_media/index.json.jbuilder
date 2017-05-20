json.member_media(@member_media) do |member_medium|
  if member_medium.user_id == current_user.id
    @media = Medium.where(Media_ID: member_medium.Member_Media_ID)
    p member_medium.Member_Media_ID
    p @media.Tile
    json.id @media.Media_ID
    json.title @media.Title
    json.type @media.Type
    json.style @media.Style
    json.season @media.Season
    json.director @media.Director
    json.description @media.description

    json.media member_medium.Media
    json.user_id member_medium.user_id
  end
end
