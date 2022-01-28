class AddColumnMobileNoToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :mobile_no, :bigint
  end
end
