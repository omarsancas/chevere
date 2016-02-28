json.array!(@drunk_levels) do |drunk_level|
  json.extract! drunk_level, :id, :name, :description, :icon
  json.url drunk_level_url(drunk_level, format: :json)
end
