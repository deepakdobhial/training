class Api::V1::ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index 
    category = Category.find_by(id: params[:category_id])
    if category.present? 
      @products = category.products
    else
      @products = Product.all
    end

    render json: {data: ActiveModelSerializers::SerializableResource.new(@products, each_serializer: ProductSerializer)}
  end

  def create
      category = Category.find_by(id: params[:category_id])
      if category.present?
        @product = category.products.create(product_params)
        render json: {data: @product}
      else
        render json: {message: "wrong category id "}
      end
    end

  def update
    category = Category.find_by(id: params[:category_id])
    if category.present?
      @product = category.products.find_by(id: params[:id])
    else 
      @product = Product.find_by(id: params[:id])
    end
    
    if @product.nil?
      render json: {status: "ERROR", message: "Product not found"} 
    else
      @product.update(product_params)
      render json: {status: status, message: "Product updated", data: @product}
    end
  end

  def show
    if params[:id].present? && params[:category_id].present?
      @product = Product.find_by(id: params[:id], category_id: params[:category_id])
    else
      @product = Product.find_by(id: params[:id])
    end

    if @product.nil?
      render json: {status: "ERROR", message: "Product not found"} 
    else
      render json: {status: status, message: "OK", data: @product}
    end
  end

  def destroy 
    category = Category.find_by(id: params[:category_id])
    if category.present?
      @product = category.products.find_by(id: params[:id])
    else
      @product = Product.find_by(id: params[:id])
    end
    
    if @product.present?
      @product.destroy
      render json: {message: "Product Deleted successfully"}
    else 
      render json: {message: "Product not found"}
    end
  end
        
  private
  def product_params
    params.require(:product).permit(:name, :price)
  end

end