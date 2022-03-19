class CreateMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :medicines do |t|
      t.string :meds_name
      t.integer :meds_cost

      t.timestamps
    end
  end
end
