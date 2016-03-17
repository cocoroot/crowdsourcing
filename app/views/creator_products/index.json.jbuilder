json.array!(@creator_products) do |creator_product|
  json.extract! creator_product, :id, :product_id, :creator_id
  json.url creator_product_url(creator_product, format: :json)
end
