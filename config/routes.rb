Rails.application.routes.draw do
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
end
