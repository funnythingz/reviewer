Rails.application.routes.draw do
  root 'clinics#index'

  devise_for :admin_users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get   '/clinics/:id(.:format)', to: 'clinics#show',   as: 'clinic'
  post  '/reviews(.:format)',     to: 'reviews#create', as: 'reviews'

end