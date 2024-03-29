R20130312Dater::Application.routes.draw do
  resources :subscribers, :only => [:new, :create] do
    collection do
      post :purchase
    end
  end

    get '/login' => 'session#new'
    post '/login' => 'session#create'
    delete '/login' => 'session#destroy'
    root :to => 'home#index'



  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
