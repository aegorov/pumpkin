Pumpkin::Application.routes.draw do

  resources :consumers
  resources :boiler_rooms
  
  root :to => "boiler_rooms#index"
end
