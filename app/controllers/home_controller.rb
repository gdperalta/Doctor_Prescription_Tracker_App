class HomeController < ApplicationController
  def index
    @prescriptions = Prescription.all
    @medicines = Medicine.all
    @doctors = Doctor.all
  end
end
