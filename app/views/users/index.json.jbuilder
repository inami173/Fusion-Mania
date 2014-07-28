json.array!(@users) do |user|
  json.extract! user, :grade, :name, :gender, :birthday, :part, :department, :inst, :favorite, :contact, :admin
  json.url user_url(user, format: :json)
end