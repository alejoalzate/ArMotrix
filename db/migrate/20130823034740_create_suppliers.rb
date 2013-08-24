class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.references :document
      t.string :social_reason
      t.string :phone_one
      t.string :phone_two
      t.string :address
      t.string :email
      t.boolean :state

      t.timestamps
    end
    add_index :suppliers, :document_id
  end
end
