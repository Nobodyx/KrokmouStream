# Renvoi tous les medium issue de la variable media

json.media(@media) do |medium|
  json.id medium.id
  json.title medium.title
  json.type medium.style
  json.style medium.genre
  json.season medium.season
  json.director medium.director
  json.description medium.description
end
