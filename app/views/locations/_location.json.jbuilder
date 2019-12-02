json.extract! location, :id, :name, :lat, :lon, :city, :state, :country, :description, :created_at, :updated_at
json.url location_url(location, format: :json)
