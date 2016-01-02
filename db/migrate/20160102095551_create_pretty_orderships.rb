class CreatePrettyOrderships < ActiveRecord::Migration
  def change
    create_table :pretty_orderships do |t|
      t.integer :pretty_id
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
