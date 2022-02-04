class DropColumnBrandIdFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :brand_id
  end
end
