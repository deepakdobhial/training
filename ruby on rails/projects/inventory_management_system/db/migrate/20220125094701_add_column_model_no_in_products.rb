class AddColumnModelNoInProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :model_no, :string
  end
end
