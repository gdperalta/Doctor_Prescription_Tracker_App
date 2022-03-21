class PrescriptionsController < ApplicationController
  before_action :set_prescription, only: %i[show edit update destroy]
  before_action :get_doctor, only: %i[new create]

  # GET /prescriptions or /prescriptions.json
  def index
    @prescriptions = Prescription.all
  end

  # GET /prescriptions/1 or /prescriptions/1.json
  def show; end

  # GET /prescriptions/new
  def new
    @prescription = @doctor.prescriptions.build
  end

  # GET /prescriptions/1/edit
  def edit; end

  # POST /prescriptions or /prescriptions.json
  def create
    @prescription = @doctor.prescriptions.build(prescription_params)

    respond_to do |format|
      if @prescription.save
        format.html do
          redirect_to doctor_prescription_url(@prescription), notice: 'Prescription was successfully created.'
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
          redirect_to doctor_prescription_url(@prescription), notice: 'Prescription was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @prescription }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescriptions/1 or /prescriptions/1.json
  def destroy
    @prescription.destroy

    respond_to do |format|
      format.html { redirect_to doctor_prescriptions_url, notice: 'Prescription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def get_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_prescription
    @prescription = Prescription.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def prescription_params
    params.require(:prescription).permit(:total_cost, :doctor_id,
                                         presc_medicines_attributes: %i[prescription_id medicine_id _destroy])
  end
end
