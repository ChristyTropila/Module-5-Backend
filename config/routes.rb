Rails.application.routes.draw do
  resources :reviews
  resources :reservations

  resources :users

  get '/listings', to: 'listings#index'
  post '/listings', to: 'listings#create'
  patch '/listings/:id', to: 'listings#update'

  get '/reservations', to: 'reservations#index'
  post '/reservations', to: 'reservations#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
