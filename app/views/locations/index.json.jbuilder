json.array!(@locations) do |location|
  json.extract! location, :id, :name, :coordinates, :external_link
  json.url location_url(location, format: :json)
end
