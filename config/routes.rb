Rails.application.routes.draw do
  get 'animals/new'
  get 'animals/create'
  get 'animals/edit'
  get 'animals/update'
  get 'animals/destroy'

  root 'static_pages#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/sign_up', to: 'users#new'
  resources :users, only: [:new, :create]
  resources :animals, only: [:new, :create, :edit, :update, :destroy]
  get '/dashboard', to: 'dashboard#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
