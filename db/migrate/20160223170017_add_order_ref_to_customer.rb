class AddOrderRefToCustomer < ActiveRecord::Migration
  def change
    add_reference :customers, :order, index: true, foreign_key: true
  end
end
