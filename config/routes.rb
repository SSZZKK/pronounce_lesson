Rails.application.routes.draw do
  get 'contents/new'
  get 'sessions/new'
  get 'pages/new'
  root 'pages#index'
  # get '/italian' => 'media#course_italian'
  # get '/chinese' => 'media#course_chinese'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :media
  # resources :contents
  get 'contents'     => 'contents#index'
  get 'contents/new' => 'contents#new'
  post 'contents' => 'contents#create'
  get 'contents/:id/edit' => 'contents#edit'
  patch 'contents/:id'  => 'contents#update'
  delete 'contents/:id' => 'contents#destroy'
  
  resources :pages
  resources :admins
  resources :media
  resources :uploads
  
  # 検索機能
  resources :searches
  # ,only:[:index]

end