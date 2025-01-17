Rails.application.routes.draw do
  get "members/show"

  devise_for :users, controllers: {
      registrations: 'crud_models/registrations'
    }
  resources :crud_models
  root 'home#index'
  get "home/about"
  get "home/my_data"
  
end
