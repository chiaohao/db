class CreatePayWays < ActiveRecord::Migration
  def change
    create_table :pay_ways do |t|
      t.text :payWay
      t.integer :fee

      t.timestamps null: false
    end
  end
end
