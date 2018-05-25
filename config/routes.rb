Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :consoles, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create]
    # resources :reviews ,only: [:new, :create]
  end
  resources :bookings, only: [ :show, :edit, :update ] do
    resources :reviews, only: [ :new, :create ]
  end
  # get "/bookings/:booking_id/reviews/new", to: 'reviews#new'
  # post "/bookings/:booking_id/reviews", to: 'reviews#create'
  get "/dashboards", to: "bookings#index", as: :dashboards
  # get "/dashboards", to: "dashboards#bk_renter", as: :dash_renter
end
