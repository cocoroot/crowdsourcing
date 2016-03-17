json.array!(@product_points) do |product_point|
  json.extract! product_point, :id, :product_id, :user_id
  json.url product_point_url(product_point, format: :json)
end
