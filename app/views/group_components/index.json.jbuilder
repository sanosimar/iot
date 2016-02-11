json.array!(@group_components) do |group_component|
  json.extract! group_component, :id, :user_id, :name, :description, :enable
  json.url group_component_url(group_component, format: :json)
end
