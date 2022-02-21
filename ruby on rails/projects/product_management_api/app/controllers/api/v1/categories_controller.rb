class Api::V1::CategoriesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @categories = Category.all
    render json: {data: ActiveModelSerializers::SerializableResource.new(@categories, each_serializer: CategorySerializer)}
  end
  
  def create
    @category = Category.create(category_params)
    render json: {data: @category}
  end

  def show
    @category = Category.find_by(id: params[:id])
    render json: {data: @category}
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    if @category.present?
      @category.destroy
      render json: {message: "Deleted Successfully"}
    else
      render json: {message: "category not found"}
    end
  end

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
