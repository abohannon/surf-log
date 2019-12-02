json.extract! entry, :id, :location, :date, :start_time, :end_time, :rating, :wave_height, :tide_height, :tide_direction, :primary_swell_direction, :primary_swell_angle, :description, :created_at, :updated_at
json.url entry_url(entry, format: :json)
