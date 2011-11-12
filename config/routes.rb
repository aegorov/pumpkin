Pumpkin::Application.routes.draw do
  resources :transactions, :except => [:show, :new] do
  	get :search, :on => :collection
  end
  resources :consumers, :except => :show
  resources :boiler_rooms, :except => :show
  
  root :to => "transactions#index"
end