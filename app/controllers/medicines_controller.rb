class MedicinesController < ApplicationController
  before_action :set_medicine, only: %i[show edit update destroy]

  def index
    @q = Medicine.ransack(params[:q])
    @medicines = @q.result(distinct: true)
  end

  def show; end

  def new
    @medicine = Medicine.new
  end

  def edit; end

  def create
    @medicine = Medicine.new(medicine_params)

    respond_to do |format|
      if @medicine.save
        format.html { redirect_to medicine_url(@medicine), notice: 'Medicine was successfully created.' }
        format.json { render :show, status: :created, location: @medicine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medicine.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @medicine.update(medicine_params)
        format.html { redirect_to medicine_url(@medicine), notice: 'Medicine was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medicine.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @medicine.destroy

    respond_to do |format|
      format.html { redirect_to medicines_url, notice: 'Medicine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_medicine
    @medicine = Medicine.find(params[:id])
  end

  def medicine_params
    params.require(:medicine).permit(:meds_name, :meds_cost, :meds_category)
  end
end
