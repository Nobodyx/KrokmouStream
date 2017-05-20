json.media(@media) do |medium|
  json.id medium.Media_ID
  json.title medium.Title
  json.type medium.Type
  json.style medium.Style
  json.season medium.Season
  json.director medium.Director
  json.description medium.description
end
