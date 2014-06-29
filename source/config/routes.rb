Feely::Application.routes.draw do

  get '/stories/all' => 'stories#index'

  resources :colors, only: [:index, :create, :show] do
    resource :stories, :except => [:edit, :show, :update, :destroy]
  end

  root :to => 'colors#index'
end
