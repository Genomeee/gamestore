json.extract! game, :id, :name, :price, :genre, :studio_id, :created_at, :updated_at
json.url game_url(game, format: :json)
