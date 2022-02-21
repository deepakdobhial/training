class Api::V1::ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index 
    @products = Product.all
    render json: {data: @products}
  end

  def create
    @product = Product.create(product_params)
    render json: {data: @product}
  end

  def update 
    @product = Product.find_by(id: params[:id])
    @product.update(product_params)
    render json: {data: @product}
  end

  def show
    @product = Product.find_by(id: params[:id])
    render json: {data: @product}
  end

  def destroy 
    @product = Product.find_by(id: params[:id])
    if @product.present?
      @product.destroy
      render json: {data: "Product Deleted"}
    else 
      render json: {data: "Product not found"}
    end
  end
        
  private
  def product_params
    params.require(:product).permit(:name, :price, :category_id)
  end


end