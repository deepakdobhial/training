require 'api_constraints'
Rails.application.routes.draw do
  apipie
  
  # namespace :api, default: {format: 'json'} do
  #   scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
  #     resources :categories do 
  #       resources :products
  #     end
  #     resources :products
  #   end
  #   scope module: :v2, constraints: ApiConstraints.new(version: 2) do
  #     resources :brands
  #     resources :products
  #   end
  # end
  namespace :api do
    namespace :v1 do 
      resources :categories do 
        resources :products
      end
      resources :products
    end

    namespace :v2 do 
      resources :brands
      resources :products
    end
    
  end
  
end