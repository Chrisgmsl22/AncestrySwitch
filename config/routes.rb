Rails.application.routes.draw do
  resources :nodes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  match 'new_root' => 'nodes#new_root', :as => 'new_root', :via => :get


  # Defines the root path route ("/")
  root "nodes#index"
end
