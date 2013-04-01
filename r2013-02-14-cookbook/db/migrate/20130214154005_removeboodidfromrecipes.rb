class Removeboodidfromrecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :bood_id
    add_column :recipes, :book_id, :integer
  end
end
