json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :address, :email, :user_name, :phone_no
  json.url user_url(user, format: :json)
end
