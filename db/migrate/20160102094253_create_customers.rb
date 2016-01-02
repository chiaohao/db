class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :cname
      t.string :account
      t.string :password
      t.text :city
      t.text :address
      t.text :phone

      t.timestamps null: false
    end
  end
end
