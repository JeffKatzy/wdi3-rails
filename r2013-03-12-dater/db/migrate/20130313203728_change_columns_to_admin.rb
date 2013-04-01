class ChangeColumnsToAdmin < ActiveRecord::Migration
  def change
    remove_column :administrators, :role
    remove_column :administrators, :ssn
    remove_column :administrators, :tel
    add_column :administrators, :role, :string
    add_column :administrators, :ssn, :string
    add_column :administrators, :tel, :string
  end
end
