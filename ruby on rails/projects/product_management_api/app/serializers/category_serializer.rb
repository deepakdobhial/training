class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :products
  
  def products
    object.products.map {|product| product.name}
  end
  
end
