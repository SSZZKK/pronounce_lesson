Rails.application.routes.draw do
  get 'contents/new'
  get 'uploads/new'
  get 'sessions/new'
  get 'pages/new'
  root 'pages#index'
  
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :admins
  resources :contents
end
