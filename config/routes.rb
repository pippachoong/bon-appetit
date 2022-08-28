Rails.application.routes.draw do
  
  
  root to: 'pages#home'

  #Login/Logout (session) routes
  get '/login' => 'session#new' #show login form
  post '/login' => 'session#create' #form submits, perform login, redirect
  delete '/login' => 'session#destroy' # logout link goes here, perform logout, redirect 



  #shortcut key to routes
  resources :users

  #/posts/1/comments/4
  resources :dishes do
    resources :comments
  end 



end
