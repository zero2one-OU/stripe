class AddCallbackUrlToStripePayment < ActiveRecord::Migration[6.1]
  def change
    add_column :stripe_payments, :callback, :string
  end
end
