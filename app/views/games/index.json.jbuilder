json.array!(@games) do |game|
  json.extract! game, :id, :name, :publisher, :year, :condition, :genre, :platform, :region, :description, :sale_type, :location, :price, :available, :user_id
  json.url game_url(game, format: :json)
end
