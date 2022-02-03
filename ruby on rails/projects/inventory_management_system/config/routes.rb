Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"
  get "categories/:id/products" => "products#products_list"
  get "products/details/:name" => "products#details"
end
