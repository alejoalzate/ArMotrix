class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.string :acronym
      t.string :address
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
