Rails.application.routes.draw do

  resources :reviews
  resources :clinics

  root 'entry#index'

end
