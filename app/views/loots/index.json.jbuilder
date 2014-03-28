json.array!(@loots) do |loot|
  json.extract! loot, :id, :name, :type, :stackable, :experimental, :external_link
  json.url loot_url(loot, format: :json)
end
