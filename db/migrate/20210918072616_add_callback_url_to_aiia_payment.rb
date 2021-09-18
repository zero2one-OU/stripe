class AddCallbackUrlToAiiaPayment < ActiveRecord::Migration[6.1]
  def change
    add_column :aiia_payments, :callback, :string
  end
end
