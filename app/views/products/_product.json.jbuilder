json.extract! product, :id, :name, :status, :count, :created_at, :updated_at
json.url product_url(product, format: :json)
