Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"

  resources :dashboard, only: :show
  # Defines the root path route ("/")
  # root "articles#index"
  resources :offers do
    resources :bookings, only: %i[create edit update]
  end

  resources :bookings, only: :destroy do
    member do
      patch :approve, :reject
    end
  end
end
