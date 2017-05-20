json.episodes(@episodes) do |episode|
  json.Title_Episode episode.Title_Episode
  json.Description episode.Description
end
