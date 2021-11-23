class CreateStripePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :stripe_payments do |t|
      t.string :context
      t.string :amount

      t.timestamps
    end
  end
end
