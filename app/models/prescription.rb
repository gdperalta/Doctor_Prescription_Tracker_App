class Prescription < ApplicationRecord
  belongs_to :doctor
  has_many :presc_medicines
  has_many :medicines, through: :presc_medicines
  accepts_nested_attributes_for :presc_medicines, allow_destroy: true, reject_if: :all_blank

  def total_cost
    total = 0
    presc_medicines.each do |presc_meds|
      total +=
        presc_meds.medicine.meds_cost *
        presc_meds.quantity *
        (1 - presc_meds.discount / 100.0)
    end

    total
  end
end
