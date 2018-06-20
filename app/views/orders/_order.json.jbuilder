json.extract! order, :id, :customer_id, :address_line1, :adress_line2, :phone, :created_at, :updated_at
json.url order_url(order, format: :json)
