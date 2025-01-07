Rails.application.routes.draw do
  devise_for :users
  resources :crud_models
  root 'home#index'
  get "home/about"
  
end
