class CreateBentoshops < ActiveRecord::Migration
  def change
    create_table :bentoshops do |t|
      t.string :shop_name
      t.text :address
      t.text :phone
      t.text :city

      t.timestamps null: false
    end
  end
end
