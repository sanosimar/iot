Rails.application.routes.draw do

  resources :group_components
  resources :subscriptions
  resources :prices
  resources :users
  resources :profiles
  resources :components

  root :to => 'home#index'

  get '/signup' => 'users#new'
  get '/i_:username', to: 'profiles#show', as: :username

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
