Rails.application.routes.draw do

  resources :profiles
  resources :users
  resources :components

  root :to => 'home#index'

  get '/signin' => 'users#signin'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
