Feely::Application.routes.draw do
  root :to => 'colors#index'
  resources :colors, :stories
end
