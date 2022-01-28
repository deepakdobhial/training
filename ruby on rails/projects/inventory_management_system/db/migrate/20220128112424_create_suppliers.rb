class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :company_name
      t.string :city
      t.string :state
      t.string :country
      t.bigint :mobile_no
      t.string :email

      t.timestamps
    end
  end
end
