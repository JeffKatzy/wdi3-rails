class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :course
      t.string :cooktime
      t.integer :servingsize
      t.text :instructions
      t.text :image

      t.timestamps
    end
  end
end
