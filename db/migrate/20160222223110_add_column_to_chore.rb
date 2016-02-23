class AddColumnToChore < ActiveRecord::Migration
  def change
    add_column :chores, :chore_type, :string
  end
end
