class ProductsController < ApplicationController
  
  def products_list
    @products = Product.where(category_id: params[:id]).pluck(:name).uniq
  end
  
  def details
    @products = Product.where(name: params[:name])
  end
  
end