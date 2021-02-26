class BabiesController < ApplicationController
  def index
    @babies = Baby.all
    @babies = policy_scope(Baby).order(created_at: :desc)
    if params[:search] && params[:search][:query]
      @babies = Baby.search_by_last_name_and_first_name(params[:search][:query])
    else
      @babies = policy_scope(Patient).order(created_at: :desc)
    end
  end

  def show
    @baby = Baby.find(params[:id])
    authorize @baby
  end

  def new
    #@patient = Patient.find(params[:patient_id])
    #@category = Category.find(params[:category])
    @baby = Baby.new
    #@baby.patient = @patient
    #@baby.category = @category
    authorize @baby
  end

  def create
    @baby = Baby.new(babies_params)
    authorize @baby
    if @baby.save
      redirect_to dashboard_path
    else
      raise
      redirect_to dashboard_path
    end
  end

private

  def babies_params
    params.require(:baby).permit(:first_name,
                                :last_name,
                                :birth_date,
                                :alive,
                                :diagnostic,
                                :weight,
                                :heigh,
                                :head_circumference,
                                :sex,
                                :monitoring,
                                :intensivecare,
                                :malformation,
                                :infectiouscontext,
                                :exit_room,
                                :breastfeeding,
                                pathologies: [],
                                monitoring_options: [],
                                intensivecare_options: [],
                                infectiouscontext_options: [])
  end
end
