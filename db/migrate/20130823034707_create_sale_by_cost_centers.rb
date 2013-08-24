class CreateSaleByCostCenters < ActiveRecord::Migration
  def change
    create_table :sale_by_cost_centers do |t|
      t.date :from
      t.date :to
      t.references :cost_center

      t.timestamps
    end
    add_index :sale_by_cost_centers, :cost_center_id
  end
end
