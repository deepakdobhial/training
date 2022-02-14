class AddColumnToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :user_id, :bigint;
    add_foreign_key :products, :users
  end
  
end
