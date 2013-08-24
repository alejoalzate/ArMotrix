class CreateLabors < ActiveRecord::Migration
  def change
    create_table :labors do |t|
      t.text :description
      t.references :cost_center
      t.string :sale_price
      t.string :quantity
      t.references :mechanical
      t.string :iva
      t.string :discount

      t.timestamps
    end
    add_index :labors, :cost_center_id
    add_index :labors, :mechanical_id
  end
end
