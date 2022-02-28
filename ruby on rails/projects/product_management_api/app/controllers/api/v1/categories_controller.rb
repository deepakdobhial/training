class Api::V1::CategoriesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def_param_group :category do
    param :id, Integer, :desc => "Category id", :required => true
    param :name, String, :desc => "Category name", :required => true
  end
     
  # api!
  api :GET, '/v1/categories/', "Show all Categories"
  def index
    @categories = Category.all
    render json: {data: ActiveModelSerializers::SerializableResource.new(@categories, each_serializer: CategorySerializer)}
  end
  
  # api!
  api :POST, '/v1/categories/', "Create new a Category"
  param_group :category  
  def create
    @category = Category.create(category_params)
    render json: {data: @category}
  end

  # api!
  api :GET, '/v1/categories/:id', "Show a Category"
  param :id, Integer, :desc => "Category id", :required => true
  def show
    @category = Category.find_by(id: params[:id])
    render json: {data: @category}
  end

  
  api :DELETE, '/v1/categories/:id', "Delete a Product"
  param :id, Integer, :desc => "Category id", :required => true
  def destroy
    @category = Category.find_by(id: params[:id])
    if @category.present?
      @category.destroy
      render json: {message: "Deleted Successfully"}
    else
      render json: {message: "category not found"}
    end
  end

  
  api :PUT, '/v1/categories/:id', "Update a Product"
  param_group :category
  def update
    @category = Category.find_by(id: params[:id])
    @category.update(category_params)
    render json: {data: @category}
  end
  
  private
  def category_params
    params.require(:category).permit(:name)
  end

end
