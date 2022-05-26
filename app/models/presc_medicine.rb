class PrescMedicine < ApplicationRecord
  belongs_to :prescription
  belongs_to :medicine
  validates :discount, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def discounted_price
    quantity * medicine.meds_cost * ((1 - discount / 100.0))
  end
end
