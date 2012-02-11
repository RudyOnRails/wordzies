WordziesCA::Application.routes.draw do
  root :to => 'words#index'
  resources :words

end
