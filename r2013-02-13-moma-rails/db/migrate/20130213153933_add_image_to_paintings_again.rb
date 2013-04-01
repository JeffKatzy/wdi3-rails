class AddImageToPaintingsAgain < ActiveRecord::Migration
  def change
    remove_column :paintings, :image
    add_column :paintings, :image, :text
  end
end
