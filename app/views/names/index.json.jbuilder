json.array!(@names) do |name|
  json.extract! name, :id, :email, :address
  json.url name_url(name, format: :json)
end
