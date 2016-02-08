json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :name, :email_confirmed, :bithday, :bio, :color, :image_url, :subscription, :social_network
  json.url profile_url(profile, format: :json)
end
