json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password_digest, :admin, :options
  json.url user_url(user, format: :json)
end
