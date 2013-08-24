class CreateAccountPayables < ActiveRecord::Migration
  def change
    create_table :account_payables do |t|
      t.string :social_reason
      t.string :nit
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
