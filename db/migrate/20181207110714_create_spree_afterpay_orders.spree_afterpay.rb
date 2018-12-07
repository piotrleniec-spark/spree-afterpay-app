# This migration comes from spree_afterpay (originally 20181011141721)
class CreateSpreeAfterpayOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :spree_afterpay_orders do |t|
      t.string     :token
      t.belongs_to :order
      t.timestamps
    end

    add_index :spree_afterpay_orders, :token
    add_index :spree_afterpay_orders, [:token, :order_id], unique: true
  end
end
