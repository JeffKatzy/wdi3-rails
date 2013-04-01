R20130211Routing::Application.routes.draw do

  get 'start' => 'home#start'
  post 'submit' => 'home#submit'
  get 'page_a' => 'home#page_a'
  get 'page_b' => 'home#page_b'
  get 'first' => 'home#start'
end
