json.array!(@users) do |user|
  json.extract! user, :id, :name, :birthday, :gender, :first_name, :last_name, :phone, :avatar
  json.url user_url(user, format: :json)
end
