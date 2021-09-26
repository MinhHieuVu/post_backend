Rails.application.routes.draw do

  resources :foods
  resources :categories
  resources :orders
  resources :customers
  resources :restaurants
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }

  root "restaurants#index"

end
