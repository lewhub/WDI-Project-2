class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.string :payment
      t.string :expected_start_date

      t.timestamps null: false
    end
  end
end
