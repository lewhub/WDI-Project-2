class AddOrderRefToWorker < ActiveRecord::Migration
  def change
    add_reference :workers, :order, index: true, foreign_key: true
  end
end
