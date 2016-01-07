class RemovePrettyIdFromBentoOrders < ActiveRecord::Migration
  def change
    remove_column :bento_orders, :pretty_id, :integer
  end
end
