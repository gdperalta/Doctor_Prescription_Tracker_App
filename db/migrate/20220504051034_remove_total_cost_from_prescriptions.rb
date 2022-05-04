class RemoveTotalCostFromPrescriptions < ActiveRecord::Migration[6.1]
  def up
    remove_column :prescriptions, :total_cost
  end

  def down
    add_column :prescriptions, :total_cost, :float
  end
end
