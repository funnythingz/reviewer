Rails.application.routes.draw do
  root 'clinics#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get   '/clinics/:id(.:format)', to: 'clinics#show',   as: 'clinic'
  post  '/reviews(.:format)',     to: 'reviews#create', as: 'reviews'

end