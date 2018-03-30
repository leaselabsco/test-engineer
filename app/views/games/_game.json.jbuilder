json.extract! game, :id, :category_id, :title, :description, :author, :status, :created_at, :updated_at
json.url game_url(game, format: :json)
