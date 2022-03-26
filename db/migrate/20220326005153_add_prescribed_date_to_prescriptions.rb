class AddPrescribedDateToPrescriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :prescriptions, :prescribed_date, :date
  end
end
