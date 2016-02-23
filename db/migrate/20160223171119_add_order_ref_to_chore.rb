class AddOrderRefToChore < ActiveRecord::Migration
  def change
    add_reference :chores, :order, index: true, foreign_key: true
  end
end
