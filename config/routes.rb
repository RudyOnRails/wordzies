WordziesCA::Application.routes.draw do

  root :to => 'words#index'
  # resources :words
  # get "words/index"
  # resources :words, :only => [:index]

  get '/search' => 'words#search'
  get 'words/:word' => 'words#show', :as => 'show_word'
  post '/words' => 'words#create'
  
  resources :users
  
  match '/auth/twitter/callback', to: 'sessions#create'
  match "/signout" => "sessions#destroy", :as => :signout
  
end
