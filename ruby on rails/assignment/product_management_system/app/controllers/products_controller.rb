class ProductsController < ApplicationController
  before_action :require_login
  
  def require_login
    if session[:current_user_id].nil?
      flash[:message] = "You must be logged in to access this section"
      redirect_to "/" 
    end
  end

  def index
    @products = Product.where(user_id: session[:current_user_id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = session[:current_user_id]
    if @product.save
      flash[:message] = "Product Created Successfully"
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @product = Product.find(params[:id])
  end

  def update 
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:message] = "Product Updated Successfully"
      redirect_to products_path
    else 
      render :edit, status: :unprocessable_entity
    end 
  end

  def delete
    @product = Product.find(params[:id])
    @product.destroy
    flash[:message] = "Product Deleted Successfully"
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :price)
  end

end