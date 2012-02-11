WordziesCA::Application.routes.draw do

  root :to => 'words#index'
  # resources :words
  get "words/index"
  get "pages/home"
  # resources :words, :only => [:index]
  


  get "/search" => 'words#search'
  
  resources :users
  
end
