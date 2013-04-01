class AddColumnsToAdmin < ActiveRecord::Migration
  def change
    add_column :administrators, :role, :integer
    add_column :administrators, :ssn, :integer
    add_column :administrators, :tel, :integer
  end
end
