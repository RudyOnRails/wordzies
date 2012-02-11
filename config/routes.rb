WordziesCA::Application.routes.draw do
  get "pages/home"

  resources :words

end
