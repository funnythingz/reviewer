ActiveAdmin.register Area do
  permit_params :top_id, :name, :top_flg

  active_admin_importable do |model, hash|
    model.create(id: hash[:id], top_id: hash[:top_id], name: hash[:name], top_flg: hash[:top_flg])
  end
end
