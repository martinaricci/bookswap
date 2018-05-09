Rails.application.routes.draw do

  post 'users/:id', to: 'users#show'

  resources :wishlists
  resources :mybooks
  resources :books
  resources :users
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'pages#index'
  
  get '/login', to: 'session#new'
  post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'


end
