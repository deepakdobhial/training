class ProductSerializer < ActiveModel::Serializer 
  attributes :name, :price, :category_name
  
  def category_name
    if !object.category.nil?
      object.category.name
    else 
      object.category
    end
  end

end
