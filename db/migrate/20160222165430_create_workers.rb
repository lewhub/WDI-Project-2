class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :profile
      t.string :password_digest
      t.string :reccurring_customers
      t.string :availability

      t.timestamps null: false
    end
  end
end
