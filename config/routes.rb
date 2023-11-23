Rails.application.routes.draw do
  devise_for :users
  root to: "dreams#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :dreams do
    collection do
      get 'search', to: 'dreams#search'
    end
  end

  resources :dreams, except: [:index] do
    resources :bookings, only: %i[new create edit update show]
  end
  resources :bookings, only: %i[index destroy]

  # Defines the root path route ("/")
  # root "posts#index"

  # add dashboard

  get "dashboard", to: "pages#dashboard"

  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
