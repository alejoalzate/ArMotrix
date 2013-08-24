class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.references :document
      t.string :address
      t.string :plate
      t.string :phone
      t.string :movil
      t.string :brand
      t.date :date_received
      t.string :type
      t.date :delivery_date
      t.string :model
      t.string :color
      t.string :mileage
      t.date :expiration_date
      t.string :vehicle
      t.string :diamond
      t.boolean :state
      t.references :inventory
      t.string :total_labor
      t.string :parts_total_value
      t.text :client_feedback

      t.timestamps
    end
    add_index :work_orders, :document_id
    add_index :work_orders, :inventory_id
  end
end
