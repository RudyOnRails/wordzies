WordziesCA::Application.routes.draw do
  
  get "pages/landing"

  root :to => 'words#index'
  
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

  match "/signout" => "sessions#destroy", :as => :signout
  
end
