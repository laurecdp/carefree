class LaboursController < ApplicationController
  def new
    @baby = Baby.new
    @labour = Labour.new
    @labour_codes = LabourCode.new
    #------------#
    @patient = Patient.find(params[:patient_id])
    @labour.patient = @patient
    #------------#
    @category = Category.find(params[:category])
    @labour.category = @category
    #------------#
    @labour.babies.build
    authorize @labour
  end

  def create
    @labour = Labour.new(labour_params)
    @patient = @labour.patient
    @labour.user = current_user
    # Babyform nested in form labour
    @baby = Baby.new(babies_params[:babies_attributes]["0"])
    @baby.patient = @patient
    @baby.save
    #------------#
    authorize @labour
    authorize @baby
    if @labour.save
    # Codesform nested in form labour
      @labour_codes = LabourCode.new(labour_codes_params)
      raise
    end
    if @labour_codes.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @labour = Labour.new
  end

  def update
    if @labour.update(labour_params)
      redirect_to labour_path(@labour)
    else
      render :show
    end
  end

  private

  def labour_params
    params.require(:labour).permit(:name,
                                   :labour_start_at,
                                   :labour_end_at,
                                   :labour_start,
                                   :labour_end,
                                   :artificial_labour,
                                   :anaesthesia_category,
                                   :anaesthesia_general,
                                   :anaesthesia_loco_general,
                                   :anaesthesia_moment,
                                   :labour_complication,
                                   :anaesthesia_complication,
                                   :caesarean,
                                   :labour_actes_done,
                                   :patient_id,
                                   :user_id,
                                   :category_id,
                                   labour_actes: [],
                                   labour_drugs: [],
                                   labour_complication_type: [])
  end

  def babies_params
    params.require(:labour).permit(babies_attributes: [:first_name,
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
                                                       infectiouscontext_options: []])
  end

  def labour_codes_params
    params.require(:labour_code).permit(:diagnostic,
                                        :labour_id,
                                        :code_id)
  end

end
