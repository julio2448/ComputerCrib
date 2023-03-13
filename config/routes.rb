Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"

  # Defines the root path route ("/")
  # root "articles#index"
  resources :offers
  resources :bookings
end
