class CreateJoinTableWorkerOrder < ActiveRecord::Migration
  def change
    create_join_table :workers, :orders do |t|
      # t.index [:worker_id, :order_id]
      # t.index [:order_id, :worker_id]
    end
  end
end
