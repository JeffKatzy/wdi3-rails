R20130211StockMovie::Application.routes.draw do
  get '/home'           => 'home#home'
  get '/about'          => 'home#about'
  get '/faq'            => 'home#faq'
  get '/movies/new'     => 'movies#new'
  get 'movies/show'    => 'movies#show'
  get 'stocks/new'      => 'stocks#new'
  post 'stocks/show'     => 'stocks#show'
  get '/' => 'home#home'
end
