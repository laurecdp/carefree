class PatientsController < ApplicationController
  def index
    @patients = policy_scope(Patient).order(created_at: :desc)
    if params[:query]
      @patients = Patient.search_by_name(params[:query])
    else
      @patients = policy_scope(Patient).order(created_at: :desc)
    end
  end

  def show
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

  def patients_params
    params.require(:patient).permit(:first_name, :last_name, :age, :birth_date, :nss, :description, :number_of_weeks)
  end
end
