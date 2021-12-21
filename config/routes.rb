Rails.application.routes.draw do
  get 'contents/new'
  get 'sessions/new'
  get 'pages/new'
  root 'pages#index'
  get 'contents/mydata'
  
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :admins
  resources :contents
  
end