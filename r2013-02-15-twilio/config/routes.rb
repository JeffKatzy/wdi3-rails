R20130215Twilio::Application.routes.draw do
  resources :users do
    collection do
      post 'txt'
    end
  end
  root to: 'users#index'
end
