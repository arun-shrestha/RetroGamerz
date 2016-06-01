json.array!(@carts) do |cart|
  json.extract! cart, :id, :user_id, :game
  json.url cart_url(cart, format: :json)
end
