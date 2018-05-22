Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :consoles, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
    # resources :reviews ,only: [:new, :create]
  end
  resources :bookings, only: [ :show ] do
    resources :reviews, only: [ :new, :create ]
  end
  # get "/bookings/:booking_id/reviews/new", to: 'reviews#new'
  # post "/bookings/:booking_id/reviews", to: 'reviews#create'
  get "/dashboards", to: "dashboards#bk_owner", as: :dash_owner
  get "/dashboards", to: "dashboards#bk_renter", as: :dash_renter
end
