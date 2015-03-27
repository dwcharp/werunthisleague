json.array!(@games) do |game|
  json.extract! game, :id, :title, :description, :start, :end
  json.url game_path(game)
end