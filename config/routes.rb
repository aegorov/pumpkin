Pumpkin::Application.routes.draw do

  resources :transactions, :only => [:index, :create, :destroy]
  resources :consumers
  resources :boiler_rooms
  
  root :to => "transactions#index"
end
