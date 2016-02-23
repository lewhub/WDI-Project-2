class AddChoreToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :chore, index: true, foreign_key: true
  end
end
