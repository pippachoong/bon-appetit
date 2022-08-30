Rails.application.routes.draw do

  root to: 'pages#home'

  # Login/Logout (session) routes
  get '/login' => 'session#new' #show login form
  post '/login' => 'session#create' #form submits, perform login, redirect
  delete '/login' => 'session#destroy' # logout link goes here, perform logout, redirect 



  #shortcut key to routes
  resources :users

  #/posts/1/comments/4
  resources :dishes 
  
  resources :comments

  resources :categories

  # we already know the recipebook id from the form submit of the dropdown
  # but the dish id has to be part of the url that the form submits to
  #                                                 (below add_dish)this is a new method
  post '/recipebooks/add/:dish_id' => 'recipebooks#add_dish', as: 'recipebook_add_dish'

  delete '/recipebooks/:recipebook_id/remove/:dish_id' => 'recipebooks#remove_dish', as: 'recipebook_remove_dish'

  resources :recipebooks

end
