Rails.application.routes.draw do

  resources :users
  resources :profiles
  resources :components

  root :to => 'home#index'

  get '/signup' => 'users#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
