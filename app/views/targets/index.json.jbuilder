json.array!(@targets) do |target|
  json.extract! target, :id, :name, :group, :area_id, :postal_code, :address, :tel, :url, :mail
  json.url target_url(target, format: :json)
end
