class ChangeTotalCostToBeFloatInPrescriptions < ActiveRecord::Migration[6.1]
  def up
    change_column :prescriptions, :total_cost, :float
  end

  def down
    change_column :prescriptions, :total_cost, :integer
  end
end
