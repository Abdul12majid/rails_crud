Rails.application.routes.draw do

  devise_for :users, controllers: {
      registrations: 'users/registrations'
    }
  resources :crud_models
  root 'home#index'
  get "home/about"
  get "home/my_data"
  
end
