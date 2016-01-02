class CreateBentoOrders < ActiveRecord::Migration
  def change
    create_table :bento_orders do |t|
      t.date :orderDate
      t.integer :totalPrice
      t.integer :customer_id
      t.integer :pretty_id
      t.integer :payWay_id
      t.integer :deliverTime_id

      t.timestamps null: false
    end
  end
end
