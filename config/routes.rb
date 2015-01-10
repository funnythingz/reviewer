Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'clinics#index'

  get   '/clinics/:id(.:format)', to: 'clinics#show',   as: 'clinic'
  post  '/reviews(.:format)',     to: 'reviews#create', as: 'reviews'

end
