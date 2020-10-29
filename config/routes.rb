Rails.application.routes.draw do


  get '/listings', to: 'listings#index'
  post '/listings', to: 'listings#create'
  patch '/listings/:id', to: 'listings#update'

  get '/reservations', to: 'reservations#index'
  post '/reservations', to: 'reservations#create'

  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  post '/users/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
