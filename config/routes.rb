Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'entry#index'

  resources :clinics

  post  '/reviews(.:format)', to: 'reviews#create', as: 'reviews'

end
