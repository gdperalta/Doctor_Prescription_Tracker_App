class HomeController < ApplicationController
  def index
    @prescriptions = Prescription.limit(9)
    @medicines = Medicine.limit(9)
    @doctors = Doctor.limit(9)
  end
end
