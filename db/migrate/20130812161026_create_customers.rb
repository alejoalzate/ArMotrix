class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.references :document
      t.string :number_document
      t.string :name
      t.string :phone
      t.string :cell_phone
      t.string :address
      t.string :email
      t.boolean :state
      t.string :credit_quota
      t.string :restricted_quota
      t.string :space_available

      t.timestamps
    end
    add_index :customers, :document_id
  end
end
