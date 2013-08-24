class CreateShoppings < ActiveRecord::Migration
  def change
    create_table :shoppings do |t|
      t.string :supplier
      t.date :date
      t.boolean :state
      t.string :vendor_invoice
      t.text :concept
      t.string :value
      t.string :quantity
      t.string :iva
      t.string :discount

      t.timestamps
    end
  end
end
