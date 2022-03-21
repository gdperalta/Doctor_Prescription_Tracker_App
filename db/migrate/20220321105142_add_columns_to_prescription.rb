class AddColumnsToPrescription < ActiveRecord::Migration[6.1]
  def change
    add_column :prescriptions, :title, :string
    add_column :prescriptions, :description, :text
  end
end
