class RemoveValueColumnFromPriorities < ActiveRecord::Migration
  def up
    remove_column :priorities, :value
  end

  def down
  end
end
