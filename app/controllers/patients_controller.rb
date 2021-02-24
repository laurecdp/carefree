class PatientsController < ApplicationController
  def index
    @patients = Patient.all
    @patients = policy_scope(Patient).order(created_at: :desc)
    if params[:search] && params[:search][:query]
      @patients = Patient.search_by_last_name_and_first_name(params[:search][:query])
    else
      @patients = policy_scope(Patient).order(created_at: :desc)
    end
  end

  def show
    @action = Action.new
    @patient = Patient.find(params[:id])
    authorize @patient
  end

  def edit
    @patient = Patient.new
  end

  def create
  end

  def update
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :age, :birth_date, :nss, :description, :number_of_weeks)
  end
end
