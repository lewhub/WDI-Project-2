class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :history
      t.string :name
      t.string :password_digest
      t.string :credit_card_info
      t.string :cart
      t.string :my_chores

      t.timestamps null: false
    end
  end
end
