class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.boolean :is_admin
      t.float    :balance
      t.timestamps
    end
  end
end
