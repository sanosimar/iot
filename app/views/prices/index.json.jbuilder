json.array!(@prices) do |price|
  json.extract! price, :id, :name, :name_with_price, :value, :currency, :color, :group, :enable
  json.url price_url(price, format: :json)
end
