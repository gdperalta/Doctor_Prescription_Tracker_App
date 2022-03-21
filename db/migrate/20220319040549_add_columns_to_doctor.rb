class AddColumnsToDoctor < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :specialization, :string
    add_column :doctors, :hospital, :string
  end
end
