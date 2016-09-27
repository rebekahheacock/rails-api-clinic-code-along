class PatientsController < ApplicationController
  # calls set_patient bethod before the show, update, and destroy methods
  before_action :set_patient, only: [:show, :update, :destroy]

  def set_patient
    @patient = Patient.find(params[:id])
  end

  # requires parameter data (from CRUD/AJAX) to be
  # formatted with a root key of "patient"
  # and allows the parameters name, sickness, and age
  def patient_params
    params.require(:patient).permit(:given_name, :surname, :sickness, :age)
  end

  def index
    @patients = Patient.all
    render json: @patients
  end

  def show
    render json: Patient.find(params[:id])
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render json: @patient, status: :created
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def update
    # patient is being located by set_patient
    # attempting to update using params that were passed in
    if @patient.update(patient_params)
      head :no_content
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @patient.destroy
    head :no_content
  end

  private :set_patient, :patient_params
end
