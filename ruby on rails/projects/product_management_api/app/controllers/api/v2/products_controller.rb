class Api::V2::ProductsController < ApplicationController

  def index
    @products = Product.all
    render json: {data: ActiveModelSerializers::SerializableResource.new(@products, each_serializer: ProductV2Serializer)}
  end

end
