Rails.application.routes.draw do
  devise_for :users
  root to: "dreams#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  resources :dreams, except: [:index] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index destroy show edit update]
  # Defines the root path route ("/")
  # root "posts#index"
end
