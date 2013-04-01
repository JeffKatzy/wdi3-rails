class CreateMountainsTable < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.string :location
      t.text :image
      t.float :height
      t.float :width
    end
  end
end
