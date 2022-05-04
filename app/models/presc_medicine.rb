class PrescMedicine < ApplicationRecord
  belongs_to :prescription
  belongs_to :medicine

  def discounted_price
    quantity * medicine.meds_cost * ((1 - discount / 100.0))
  end
end
