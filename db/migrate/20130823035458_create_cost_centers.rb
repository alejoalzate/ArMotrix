class CreateCostCenters < ActiveRecord::Migration
  def change
    create_table :cost_centers do |t|
      t.string :cost_center
      t.string :code
      t.boolean :state

      t.timestamps
    end
  end
end
