Rails.application.routes.draw do

  resources :orders
  resources :customers
  resources :restaurants
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }

  root "users#registrations"

end
