class RemoveColumnsFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :brand_name
    remove_column :products, :category_name
  end
end
