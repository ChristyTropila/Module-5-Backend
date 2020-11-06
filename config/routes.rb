Rails.application.routes.draw do

  resources :conversations
  resources :messages
  mount ActionCable.server => '/cable'

  get '/messages', to: 'messages#index'
  post '/messages', to: 'messages#create'

  post '/conversations', to: 'conversations#create'
  get '/conversations', to: 'conversations#index'
  get '/conversations/:id', to: 'conversations#show'

  get '/listings', to: 'listings#index'
  post '/listings', to: 'listings#create'
  patch '/listings/:id', to: 'listings#update'
  delete '/listings/:id', to: 'listings#destroy'

  get '/reservations', to: 'reservations#index'
  post '/reservations', to: 'reservations#create'
  get '/reservations/:id', to: 'reservations#show'
  delete '/reservations/:id', to: 'reservations#destroy'

  get '/users/keep_logged_in', to: 'users#keep_logged_in'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  post '/users', to: 'users#create'
  post '/users/login', to: 'users#login'
 

  get '/reviews', to: 'reviews#index'
  post '/reviews', to: 'reviews#create'

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
