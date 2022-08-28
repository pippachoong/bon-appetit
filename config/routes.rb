Rails.application.routes.draw do
  
  
  root to: 'pages#home'


  #shortcut key to routes
  resources :users, :dishes 


end
