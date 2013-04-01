R20130212Planets::Application.routes.draw do
  get '/planets' => 'planets#index'
  root to: 'planets#index'
  get 'planets/new' => 'planets#new'
  post 'planets/' => 'planets#create'
  get '/planets/:id' => 'planets#show', :as => 'planet'
  post '/planets/:id/delete' => 'planets#destroy', :as => 'destroy_planet'
  get '/planets/:id/edit' => 'planets#edit', :as => 'planet_edit'
  post '/planets/:id' => 'planets#update'
end
