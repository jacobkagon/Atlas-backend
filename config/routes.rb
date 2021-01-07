Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create]
      resources :reviews, only: [:index, :create, :show, :destroy]
      resources :countries, only: [:index, :create, :show]
      resources :favorites, only: [:index, :show, :create, :destroy]
      delete '/favorites/:user_id/:country_id', to: 'favorites#destroy'
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

    end
  end
end
