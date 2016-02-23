class AddWorkerToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :worker, index: true, foreign_key: true
  end
end
