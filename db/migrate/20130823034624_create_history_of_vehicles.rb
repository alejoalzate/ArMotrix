class CreateHistoryOfVehicles < ActiveRecord::Migration
  def change
    create_table :history_of_vehicles do |t|
      t.string :plate
      t.string :customer
      t.date :date

      t.timestamps
    end
  end
end
