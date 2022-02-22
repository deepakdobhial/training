class Api::V2::BrandsController < ApplicationController

  def index 
    @brands = Brand.all
    render json: {data: ActiveModelSerializers::SerializableResource.new(@brands, each_serializer: BrandSerializer)}
  end

end
