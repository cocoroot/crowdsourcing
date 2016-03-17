json.array!(@comments) do |comment|
  json.extract! comment, :id, :product_id, :user_id, :title, :body
  json.url comment_url(comment, format: :json)
end
