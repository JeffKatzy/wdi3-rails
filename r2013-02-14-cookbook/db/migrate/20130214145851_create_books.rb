class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.text :image
      t.string :chef
      t.string :cuisine

      t.timestamps
    end
  end
end
