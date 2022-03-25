class AddQuantityToPrescMedicine < ActiveRecord::Migration[6.1]
  def change
    add_column :presc_medicines, :quantity, :integer, default: 1
  end
end
