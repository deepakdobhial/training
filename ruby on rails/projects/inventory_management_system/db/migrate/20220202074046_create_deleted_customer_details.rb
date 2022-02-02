class CreateDeletedCustomerDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :deleted_customer_details do |t|
      t.string :name
      t.bigint :customer_id
      
      t.timestamps
    end
  end
end
