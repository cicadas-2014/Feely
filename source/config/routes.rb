Feely::Application.routes.draw do
  root :to => 'color#index'
  resources :colors, :stories
end
