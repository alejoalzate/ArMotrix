class CreateMechanicals < ActiveRecord::Migration
  def change
    create_table :mechanicals do |t|
      t.references :document
      t.string :name
      t.string :surname
      t.string :work
      t.boolean :type
      t.boolean :state

      t.timestamps
    end
    add_index :mechanicals, :document_id
  end
end
