class AddDiscountToPrescMedicine < ActiveRecord::Migration[6.1]
  def change
    add_column :presc_medicines, :discount, :integer, default: 0
  end
end
