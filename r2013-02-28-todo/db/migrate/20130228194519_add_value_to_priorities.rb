class AddValueToPriorities < ActiveRecord::Migration
  def change
    add_column :priorities, :value, :integer
  end
end
