Rails.application.routes.draw do
  get 'favorites/index'
  get 'favorites/show'
  get 'favorites/create'
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :countries, only: [:index, :create]
      resources :favorites, only: [:index, :create]
    end
  end
end
