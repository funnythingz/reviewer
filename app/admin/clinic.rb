ActiveAdmin.register Clinic do
  permit_params :name, :group, :area_id, :postal_code, :address, :tel, :url, :mail
end
