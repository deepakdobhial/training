class Api::V2::BrandsController < ApplicationController
  resource_description do
    api_versions "2.0"
    formats ['json', 'html']
    # resource_id 'Brands'
    # name "Product_mgt"
    short "Top Brands"
    # desc 'List of brands '
    api_base_url "/api/v2"
    error 404, "Missing"
    error 500, "Server crashed for some <%= reason %>", :meta => {:anything => "you can think of"}
    error :unprocessable_entity, "Could not save the entity."
    returns :code => 403 do
      property :reason, String, :desc => "Why this was forbidden"
    end
    app_info 'version-2.0'
    meta :tags => ["Lenovo, HP, Dell"]
    deprecated false
    description <<-EOS
      == This method index all brands. 
             
    EOS
    # end
  end
  
  api_versions
  api :GET, '/brands', "Show all brands"
  def index 
    @brands = Brand.all
    render json: {data: ActiveModelSerializers::SerializableResource.new(@brands, each_serializer: BrandSerializer)}
  end

end
