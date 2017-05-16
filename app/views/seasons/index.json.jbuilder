json.seasons(@seasons) do |season|
  json.episode season.Episode
  json.date season.Date
end
