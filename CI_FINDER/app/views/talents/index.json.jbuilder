json.array!(@talents) do |talent|
  json.extract! talent, :id, :name, :talent_type
  json.url talent_url(talent, format: :json)
end
