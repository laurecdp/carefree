class PatientsController < ApplicationController
  def new
    @patient = Patient.new
    authorize @patient
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save 
      redirect_to patient_path(@patient)
    else
      render :new
    end
    authorize @patient
  end

  def index
    @patients = policy_scope(Patient).order(created_at: :desc)
    if params[:search] && params[:search][:query]
      @patients = Patient.search_by_last_name_and_first_name(params[:search][:query])
    end
  end

  def show
    @patient = Patient.find(params[:id])
    @categories = Category.all

    # Methode new pour le form
    @labour = Labour.new
    @baby = Baby.new
    @labour_code = LabourCode.new
    #------------#
    if params[:category]
      @labour.patient = @patient
      #------------#
      @category = Category.find(params[:category])
      @labour.category = @category
      #------------#
      @labour.babies.build
      @labour.labour_codes.build
      #------------#
    end
    authorize @patient
  end

  def edit
    @patient = Patient.new
  end

  def update
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name,
                                    :last_name,
                                    :age,
                                    :birth_date,
                                    :nss,
                                    :blood_group,
                                    :pregnant,
                                    :number_of_weeks)
  end
end
