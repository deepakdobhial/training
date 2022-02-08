Rails.application.routes.draw do
  resources :orders
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get "categories/" => "categories#index"
  get "brands/" => "brands#index"
  get "categories/:id" => "products#categories_wise_products"
  get "brands/:id/" => "products#brands_wise_products"
  get "products/categories_wise_details/:name" => "products#categories_wise_details"
  get "brands/:id/products/brands_wise_details/:name" => "products#brands_wise_details"
  get "customers" => "customers#index"
  get "customers/new" => "customers#new" 
  get "customers/:id" => "customers#show"
  post "customers/" => "customers#create"
  get "customers/:id/edit" => "customers#edit"
  resources :customers
  # patch "customers/update" => "customers#update"
  # delete "customers/destroy/:id" => "customers#destroy"
  
  
  
  
end
