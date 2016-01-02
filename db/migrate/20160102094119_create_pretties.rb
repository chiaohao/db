class CreatePretties < ActiveRecord::Migration
  def change
    create_table :pretties do |t|
      t.string :name
      t.text :prettyStyle
      t.integer :strength
      t.text :city

      t.timestamps null: false
    end
  end
end
