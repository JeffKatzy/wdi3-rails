R20130213MomaRails::Application.routes.draw do
  get "paintings/index"

  get "paintings/new"

  get "paintings/create"

  get "paintings/edit"

  get "paintings/update"

  get "paintings/destroy"

  resources :artists
  resources :paintings
end
