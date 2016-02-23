class RemoveTypeFromChore < ActiveRecord::Migration
  def change
    remove_column :chores, :type
  end
end
