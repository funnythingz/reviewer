ActiveAdmin.register Review do
  permit_params :reviewer, :mail, :comment, :published, :clinic_id, :action
end
