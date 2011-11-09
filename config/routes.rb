Pumpkin::Application.routes.draw do

  resources :transactions, :only => [:index, :create, :destroy]
  resources :consumers, :except => :show
  resources :boiler_rooms, :except => :show
  
  root :to => "transactions#index"
end
