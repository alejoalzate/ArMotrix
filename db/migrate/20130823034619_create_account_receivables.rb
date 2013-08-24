class CreateAccountReceivables < ActiveRecord::Migration
  def change
    create_table :account_receivables do |t|
      t.string :name
      t.string :identification
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
