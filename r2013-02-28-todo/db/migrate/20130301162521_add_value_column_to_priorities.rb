class AddValueColumnToPriorities < ActiveRecord::Migration
  def change
    add_column :priorities, :value, :string
  end
end
