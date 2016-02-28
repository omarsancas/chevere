json.array!(@beer_types) do |beer_type|
  json.extract! beer_type, :id
  json.url beer_type_url(beer_type, format: :json)
end
