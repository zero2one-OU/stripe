class CreateAiiaPayments < ActiveRecord::Migration[6.1]
  def change
    create_table :aiia_payments do |t|
      t.string :context
      t.string :amount

      t.timestamps
    end
  end
end
