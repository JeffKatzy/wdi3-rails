class AddSubscribersTable < ActiveRecord::Migration
 def change
    create_table :subscribers do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
