class AddMedsCategoryToMedicine < ActiveRecord::Migration[6.1]
  def change
    add_column :medicines, :meds_category, :string
  end
end
