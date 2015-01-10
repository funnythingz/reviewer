Rails.application.routes.draw do

  root 'entry#index'

  resources :clinics

  post  '/reviews(.:format)', to: 'reviews#create', as: 'reviews'

end
