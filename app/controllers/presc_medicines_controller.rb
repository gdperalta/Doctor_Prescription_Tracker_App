class PrescMedicinesController < ApplicationController
  # before_action :set_presc_medicine, only: %i[edit update destroy]

  # def new
  #   @presc_medicine = Presc_medicine.new
  # end

  # def edit; end

  # def create
  #   @presc_medicine = Presc_medicine.new(presc_medicine_params)

  #   if @presc_medicine.save
  #     nil
  #   else
  #     render :new
  #   end
  # end

  # def update
  #   if @presc_medicine.update(presc_medicine_params)
  #     redirect_to doctor_prescription_path
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @presc_medicine.destroy
  #   redirect_to doctor_prescription_path
  # end

  # private

  # def set_presc_medicine
  #   @presc_medicine = Presc_medicine.find(params[:id])
  # end

  # def presc_medicine_params
  #   params.require(:presc_medicines).permit(:prescription_id, :medicine_id)
  # end
end
