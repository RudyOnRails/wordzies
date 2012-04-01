WordziesCA::Application.routes.draw do
    
  root :to => 'pages#landing'

  get 'pages/landing'
  get 'pages/dashboard'
  
  # get "words/index"
  # resources :words, :only => [:index]
  get '/search' => 'words#search'
  get 'words/:word' => 'words#show', :as => 'show_word'
  #post '/words' => 'words#create'
  resources :words

  resources :users
  
  resources :uses
  get "uses/create"
  
  match '/auth/twitter/callback', to: 'sessions#create'
  match '/auth/twitter', :as => :twitter_auth

  match "/signout" => "sessions#destroy", :as => :signout
  match "/dashboard" => "pages#dashboard", :as => :dashboard
  
end
