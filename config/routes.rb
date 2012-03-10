WordziesCA::Application.routes.draw do

  get "uses/create"

  root :to => 'words#index'
  # resources :words
  # get "words/index"
  # resources :words, :only => [:index]



  resources :words
  get '/search' => 'words#search'
  get 'words/:word' => 'words#show', :as => 'show_word'
  #post '/words' => 'words#create'
  
  
  #resources :words
  resources :users
  resources :uses
  
  match '/auth/twitter/callback', to: 'sessions#create'

  match "/signout" => "sessions#destroy", :as => :signout
  
end
