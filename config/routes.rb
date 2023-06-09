Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/offers/my_offers", to: "offers#my_offers", as: :my_offers
  resources :dashboard, only: :show
  resources :offers do
    resources :bookings, only: %i[show new create edit update]
  end

  resources :bookings, only: :destroy do
    member do
      patch :approve, :reject
    end
  end

  patch "select_booking/:id", to: "bookings#select_booking", as: :select_booking

  resources :offers, only: :destroy do
    member do
      patch :approve, :reject
    end
  end
end
