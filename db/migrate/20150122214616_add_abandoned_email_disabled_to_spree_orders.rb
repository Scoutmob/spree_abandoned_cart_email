class AddAbandonedEmailDisabledToSpreeOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :abandoned_email_disabled, :boolean, default: false
  end
end
