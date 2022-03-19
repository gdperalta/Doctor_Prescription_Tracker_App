class Prescription < ApplicationRecord
  belongs_to :doctor
  has_many :presc_medicines
end
