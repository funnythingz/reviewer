Rails.application.routes.draw do
  root 'targets#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get   '/targets/:id(.:format)', to: 'targets#show',   as: 'target'
  post  '/reviews(.:format)',     to: 'reviews#create', as: 'reviews'

end