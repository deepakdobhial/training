class ProductV2Serializer < ActiveModel::Serializer
  attributes :id, :name, :brand_name

  def brand_name
    if !object.brand.nil?
      object.brand.name
    else
      object.brand
    end
  end
      
end
