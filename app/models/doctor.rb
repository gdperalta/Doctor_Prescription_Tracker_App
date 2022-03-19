class Doctor < ApplicationRecord
  has_many :prescriptions
  validates :doctor_name, presence: true
end
