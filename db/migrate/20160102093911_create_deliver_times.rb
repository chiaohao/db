class CreateDeliverTimes < ActiveRecord::Migration
  def change
    create_table :deliver_times do |t|
      t.text :deliverTime
      t.integer :deliverExpense

      t.timestamps null: false
    end
  end
end
