class AddColumnToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :brand, index: true
  end
end
