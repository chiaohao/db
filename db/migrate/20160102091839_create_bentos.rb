class CreateBentos < ActiveRecord::Migration
  def change
    create_table :bentos do |t|
      t.string :item_name
      t.integer :price
      t.integer :bentoshop_id

      t.timestamps null: false
    end
  end
end
