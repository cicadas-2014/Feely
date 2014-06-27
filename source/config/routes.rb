Feely::Application.routes.draw do

  get '/stories/all' => 'stories#index'

  resources :colors do
    resources :stories
  end

  root :to => 'colors#index'


end
