json.array!(@beer_catalogs) do |beer_catalog|
  json.extract! beer_catalog, :id, :beer_name, :price
  json.url beer_catalog_url(beer_catalog, format: :json)
end
