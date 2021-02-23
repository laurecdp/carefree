class PatientsController < ApplicationController
  def index
    @patients = policy_scope(Patient).order(created_at: :desc)
  end

  def show
    @patient = Patient.find(params[:id])
    authorize @patient
  end
end
