json.array!(@games) do |game|
  json.extract! game, :id, :title, :description, :start, :end
  json.url games_path(format: :json)
end