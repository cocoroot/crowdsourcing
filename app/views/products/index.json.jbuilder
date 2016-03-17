json.array!(@products) do |product|
  json.extract! product, :id, :title, :price, :body, :point, :file_name
  json.url product_url(product, format: :json)
end
