Pumpkin::Application.routes.draw do

  resources :transactions
  resources :consumers
  resources :boiler_rooms
  
  root :to => "transactions#index"
end
