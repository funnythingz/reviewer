json.array!(@clinics) do |clinic|
  json.extract! clinic, :id, :name, :group, :area_id, :postal_code, :address, :tel, :url, :mail
  json.url clinic_url(clinic, format: :json)
end
