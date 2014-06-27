Feely::Application.routes.draw do

  resources :colors do
    resource :stories
  end

  root :to => 'colors#index'

end
