class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :gender, limit: 1
      t.date :dob 
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
