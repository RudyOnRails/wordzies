WordziesCA::Application.routes.draw do

  get "uses/create"

  root :to => 'words#index'
  # resources :words
  # get "words/index"
  # resources :words, :only => [:index]

  get '/search' => 'words#search'
  get 'words/:word' => 'words#show', :as => 'show_word'
  post '/words' => 'words#create'
  
  resources :users
  resources :uses
  
  match '/auth/twitter/callback', to: 'sessions#create'
    
end
