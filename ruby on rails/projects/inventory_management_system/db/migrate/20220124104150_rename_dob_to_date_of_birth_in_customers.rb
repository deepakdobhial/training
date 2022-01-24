class RenameDobToDateOfBirthInCustomers < ActiveRecord::Migration[7.0]
  def change
    rename_column :customers, :dob, :date_of_birth
  end
end
