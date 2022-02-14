Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get "signup" => "users#signup"
  post "create" => "users#create"
  get "signin" => "users#signin"
  get "users/signout" => "users#signout"
  get "products/" => "products#index"
  get "products/new" => "products#new"
  post "products/create" => "products#create"
  get "products/edit/:id" => "products#edit"
  patch "products/update/:id" => "products#update"
  get "products/:id" => "products#delete"
  delete "products/:id" => "products#delete"
    
end
