Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :categories do 
        resources :products
      end
      resources :products
    end
  end

  namespace :api do 
    namespace :v2 do
      resources :products
      resources :brands
    end
  end
  
end
