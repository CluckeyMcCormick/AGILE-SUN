json.array!(@rated_talents) do |rated_talent|
  json.extract! rated_talent, :id, :user_id, :talent_id, :rating
  json.url rated_talent_url(rated_talent, format: :json)
end
