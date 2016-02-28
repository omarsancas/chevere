json.array!(@pictures) do |picture|
  json.extract! picture, :id, :hashtag, :image_url
  json.url picture_url(picture, format: :json)
end
