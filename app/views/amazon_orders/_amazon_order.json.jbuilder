json.extract! amazon_order, :id, :date, :amount, :double, :number, :property, :desc, :created_at, :updated_at
json.url amazon_order_url(amazon_order, format: :json)
