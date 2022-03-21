class Prescription < ApplicationRecord
  belongs_to :doctor
  has_many :presc_medicines
  accepts_nested_attributes_for :presc_medicines, allow_destroy: true, reject_if: :all_blank
end
