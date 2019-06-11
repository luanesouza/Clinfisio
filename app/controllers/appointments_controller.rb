class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
      @patient = Patient.find(params[:patient_id])
      @appointments = Appointment.find(params[:id])
      render json: @appointment
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
      @doctor = Doctor.find(params[:doctor_id])
      @appointment = Appointment.new(appointment_params)

      if @appointment.save
        render json: @appointment, status: :created
      else
        render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    @doctor = Doctor.find(params[:doctor_id])
    @appointment = Appointment.find(params[:id])
    if @appointment.update_attributes(appointment_params)
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
      @appointment.find(params[:id])
      @doctor = Doctor.find(params[:doctor_id])
      @appointment.destroy
      redirect_to doctor_appointments_path(@doctor)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def appointment_params
      params.require(:appointment).permit(
        :patient_name,
        :patient_id,
        :doctor_id,
        :doctor_name,
        :date,
        :time,
        :session_id,
        :session_type,
        :patient_present)
    end
end
