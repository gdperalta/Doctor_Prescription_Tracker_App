class PrescriptionsController < ApplicationController
  before_action :set_prescription, only: %i[show edit update destroy]
  before_action :find_doctor, only: %i[index show new create edit update destroy]

  def index
    @prescriptions = @doctor.prescriptions
  end

  def show
    @presc_medicines = @prescription.presc_medicines
  end

  def new
    @prescription = @doctor.prescriptions.build
    # Used to add a prescribed medicine field
    @prescription.presc_medicines.build
  end

  def edit; end

  def create
    @prescription = @doctor.prescriptions.build(prescription_params)

    respond_to do |format|
      if @prescription.save
        format.html do
          redirect_to doctor_prescriptions_path(@doctor), notice: 'Prescription was successfully created.'
        end
        format.json { render :show, status: :created, location: @prescription }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescriptions/1 or /prescriptions/1.json
  def update
    respond_to do |format|
      if @prescription.update(prescription_params)
        format.html do
          redirect_to doctor_prescriptions_path(@doctor), notice: 'Prescription was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @prescription }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @prescription.presc_medicines.find_each(&:destroy)
    @prescription.destroy

    respond_to do |format|
      format.html { redirect_to doctor_prescriptions_path(@doctor), notice: 'Prescription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def find_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end

  def set_prescription
    @prescription = Prescription.find(params[:id])
  end

  def prescription_params
    params.require(:prescription).permit(:total_cost, :doctor_id, :title, :description,
                                         presc_medicines_attributes: %i[id prescription_id medicine_id quantity discount _destroy])
  end
end
