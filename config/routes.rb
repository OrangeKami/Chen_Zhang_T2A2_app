Rails.application.routes.draw do
  resources :listings
  devise_for :users, :path_prefix => 'd', controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations'
   }
  root to: 'pages#home'
  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  match '/users/:id/', to: 'users#destroy', via: 'delete'
  patch 'users/:id', to: 'users#update'
  resources :users
  get '/plants', to: 'listings#plants', as: 'plants'
  get '/pots', to: 'listings#pots', as: 'pots'
  get '/accessories', to: 'listings#accessories', as: 'accessories'
  
end
