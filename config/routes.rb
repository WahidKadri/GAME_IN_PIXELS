Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :consoles, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
    resources :reviews ,only: [:new, :create]
  end
  get "/dashboards", to: "dashboards#bk_owner", as: :dash_owner
  get "/dashboards", to: "dashboards#bk_renter", as: :dash_renter
end
