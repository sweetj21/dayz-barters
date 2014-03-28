json.array!(@users) do |user|
  json.extract! user, :id, :name, :steamid, :karma, :email
  json.url user_url(user, format: :json)
end
