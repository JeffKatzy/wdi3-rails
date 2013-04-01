class AddBookIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :bood_id, :integer
  end
end
