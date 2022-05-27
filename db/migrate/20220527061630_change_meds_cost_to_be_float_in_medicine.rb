class ChangeMedsCostToBeFloatInMedicine < ActiveRecord::Migration[6.1]
  def up
    change_column :medicines, :meds_cost, :float
  end

  def down
    change_column :medicines, :meds_cost, :integer
  end
end
