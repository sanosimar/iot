json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :name, :name_with_price, :value, :currency, :color, :group, :enable
  json.url subscription_url(subscription, format: :json)
end
