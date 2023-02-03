Rails.application.routes.draw do
  resources :users
  resources :schedulers

  post '/login',to: 'auth#create'
  get 'profile', to: 'user#profile'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
