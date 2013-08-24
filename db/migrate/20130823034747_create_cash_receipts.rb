class CreateCashReceipts < ActiveRecord::Migration
  def change
    create_table :cash_receipts do |t|
      t.date :date
      t.text :observations
      t.boolean :state
      t.string :retention
      t.string :customer
      t.string :concept
      t.string :movement_number
      t.string :value
      t.references :payment
      t.references :bank_origin
      t.references :destination_bank

      t.timestamps
    end
    add_index :cash_receipts, :payment_id
    add_index :cash_receipts, :bank_origin_id
    add_index :cash_receipts, :destination_bank_id
  end
end
