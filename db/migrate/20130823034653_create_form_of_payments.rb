class CreateFormOfPayments < ActiveRecord::Migration
  def change
    create_table :form_of_payments do |t|
      t.string :name
      t.string :acronym

      t.timestamps
    end
  end
end
