Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :cars, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "/profile", to: "pages#profile", as: :profile
  get "/profile_owner", to: "pages#profile_owner", as: :profile_owner
  resources :bookings, only: [:edit, :update]
end
