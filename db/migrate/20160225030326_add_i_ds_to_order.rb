class AddIDsToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :customer_id, :integer
    add_column :orders, :chore_id, :integer
    add_column :orders, :worker_id, :integer
  end
end
