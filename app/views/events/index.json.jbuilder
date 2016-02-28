json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :cover_photo, :start_time, :place
  json.url event_url(event, format: :json)
end
