class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json

  def index
    @patients = Patient.all.sort_by { |h | h[:patient_first_name] }
    @appointments = Appointment.all
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @patient = Patient.find(params[:id])
    @appointments = Appointment.where(patient_id: @patient.id)
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
    @patient = Patient.find(params[:id])
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Novo paciente criado.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update_attributes(patient_params)
        format.html { redirect_to @patient, notice: 'A informacao do paciente foi atualizada.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Paciente removido.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patient_params
      params.require(:patient).permit(
      :patient_first_name,
      :patient_last_name,
      :patient_phone_number,
      :diagnose,
      :address,
      :cpf_rg,
      :dob,
      :insurance,
      :invoice_days,
      :enrollment_number,
      :disease_classification,
      :pass_number,
      :doctor_petitioner,
      :clinic_petitioner,
      :federal_medicine_council
      )
    end
end
