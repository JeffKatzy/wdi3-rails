class AddCodeTable < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :hex
      t.integer :symbol
      t.timestamps
    end
  end
end
