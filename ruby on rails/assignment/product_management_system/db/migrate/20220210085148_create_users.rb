class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, unique: true
      t.string :password, null: false
      t.date :date_of_birth, null: false
      t.string :address
      
      t.timestamps
    end
  end
end
