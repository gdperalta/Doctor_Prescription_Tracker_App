class CreatePrescMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :presc_medicines do |t|
      t.references :prescription, null: false, foreign_key: true
      t.references :medicine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
