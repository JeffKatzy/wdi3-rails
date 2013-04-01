class CreateProductsTable < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :name
      t.text    :description
      t.string :image
      t.float :cost
      t.float :latitude, :default => 0
      t.float :longitude, :default => 0
      t.text :address
    end
  end
end
