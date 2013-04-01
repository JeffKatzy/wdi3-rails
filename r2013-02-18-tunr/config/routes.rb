R20130218Tunr::Application.routes.draw do
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  root :to => 'home#index'
  resources :users, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

  resources :sessions, :artists, :albums, :genres, :songs
end
