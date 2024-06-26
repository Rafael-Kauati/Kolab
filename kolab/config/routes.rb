Rails.application.routes.draw do
  get '/singin', to: 'singin#new'  # This would define an 'index' route  get 'login/index'
  get '/login', to: 'login#index'  # This would define an 'index' route  get 'login/index'
  
  get 'frontpage/index'
  root 'frontpage#index'

  resources :singin, only: [:new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
