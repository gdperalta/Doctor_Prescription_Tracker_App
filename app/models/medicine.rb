class Medicine < ApplicationRecord
  has_many :presc_medicines
  has_many :prescriptions, through: :presc_medicines
  validates :meds_name, presence: true
  validates :meds_cost, presence: true
end
