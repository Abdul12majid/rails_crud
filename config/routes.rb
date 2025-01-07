Rails.application.routes.draw do
  devise_for :views
  resources :crud_models
  root 'home#index'
  get "home/about"
  
end
