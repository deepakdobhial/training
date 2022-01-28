class CreateJoinTableBrandsProducts < ActiveRecord::Migration[7.0]
  def change
    create_join_table :products, :brands do |t|
      t.index [:product_id, :brand_id]
      t.index [:brand_id, :product_id]
    end
  end
end
