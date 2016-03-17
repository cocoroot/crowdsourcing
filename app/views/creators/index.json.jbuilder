json.array!(@creators) do |creator|
  json.extract! creator, :id, :user_id, :skill, :body
  json.url creator_url(creator, format: :json)
end
