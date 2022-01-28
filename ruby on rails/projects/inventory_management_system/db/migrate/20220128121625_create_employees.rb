class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string  :name
      t.string  :gender, limit: 1
      t.date    :date_of_birth
      t.decimal :salary
      t.string  :city
      t.string  :state
      t.string  :country
      t.date    :joining_date
      t.date    :exit_date
      
      t.timestamps
    end
  end
end
