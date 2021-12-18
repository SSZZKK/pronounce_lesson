Rails.application.routes.draw do
  get 'sessions/new'
  get 'pages/index'
  root 'pages#index'
  
  resources :admins
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :admins
  resources :posts
end
