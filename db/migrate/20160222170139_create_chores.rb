class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :type
      t.string :price
      t.integer :worker_count
      t.string :chore_title

      t.timestamps null: false
    end
  end
end
