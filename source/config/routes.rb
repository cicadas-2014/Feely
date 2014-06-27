Feely::Application.routes.draw do

  resources :colors do
    resource :stories
  end

end
