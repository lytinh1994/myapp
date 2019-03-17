json.extract! product, :id, :sku, :title, :description, :availability, :condition, :price, :brand, :created_at, :updated_at
json.url product_url(product, format: :json)
