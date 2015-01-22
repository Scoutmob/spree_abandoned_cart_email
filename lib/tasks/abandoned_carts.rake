namespace :spree_abandoned_cart_email do
  desc 'Disable abandoned emails on all existing orders'
  task mark_existing_orders: :environment do
    puts "Updating existing orders"
    Spree::Order.all.each do |order|
      order.update_column(:abandoned_email_disabled, true)
    end
    puts "Update complete"
  end

  desc "Send abandoned cart emails"
  task send_emails: :environment do
    Spree::Order.email_eligible_abandoned_email_orders
  end

end
