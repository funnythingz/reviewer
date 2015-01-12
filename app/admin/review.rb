ActiveAdmin.register Review do
  permit_params :reviewer, :mail, :comment, :published, :target_id, :action
end
