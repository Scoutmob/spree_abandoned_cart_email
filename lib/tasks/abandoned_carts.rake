namespace :spree_abandoned_cart_email do
  desc 'Set all existing orders as notified'
  task mark_existing_orders: :environment do
    puts "Updating exitings orders"
    Spree::Order.all.each do |order|
      order.update_column(:abandoned_email_sent_at, Time.zone.now)
    end
    puts "Update complete"
  end
end
