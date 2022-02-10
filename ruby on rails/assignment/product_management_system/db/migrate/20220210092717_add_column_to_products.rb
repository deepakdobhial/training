class AddColumnToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :users, index: true
  end
end
