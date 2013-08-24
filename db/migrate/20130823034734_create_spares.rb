class CreateSpares < ActiveRecord::Migration
  def change
    create_table :spares do |t|
      t.text :description
      t.references :cost_center
      t.string :purchase_price
      t.string :selling_price
      t.string :quantity
      t.string :iva

      t.timestamps
    end
    add_index :spares, :cost_center_id
  end
end
