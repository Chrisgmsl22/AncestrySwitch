Rails.application.routes.draw do
  resources :nodes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "nodes#index"
end