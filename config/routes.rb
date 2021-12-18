Rails.application.routes.draw do
  get 'uploads/new'
  get 'sessions/new'
  get 'pages/new'
  root 'uploads#new'
  
  resources :admins
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :admins
  resources :uploads
end
