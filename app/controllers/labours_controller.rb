class LaboursController < ApplicationController
  def new
    @baby = Baby.new
    @labour_code = LabourCode.new
    @labour = Labour.new
    #------------#
    @patient = Patient.find(params[:patient_id])
    @labour.patient = @patient
    #------------#
    @category = Category.find(params[:category])
    @labour.category = @category
    #------------#
    @labour.babies.build
    @labour.labour_codes.build
    #------------#
    authorize @labour
  end

  def create
    @categories = Category.all
    @codes = Code.all
    @labour = Labour.new(labour_params)
    @patient = @labour.patient
    @labour_id = @labour.id
    # Form "baby" nested in form "Labour"
    @baby = Baby.new(babies_params[:babies_attributes]["0"])
    @baby.patient = @patient
    @baby.save
    # Form "Labour_codes" included in form "Labour"
    @labour_code = LabourCode.new(labour_code_params[:labour_codes_attributes]["0"])
    @labour_code.labour_id = @labour_id
    @labour_code.save
    #------------#
    @labour.user = current_user
    #------------#
    authorize @labour
    authorize @baby
    authorize @labour_code
    #------------#
    if @labour.save
      render :edit
      redirect_to patient_path(@patient)
    else
      render :new
    end
  end

  def edit
    @labour = Labour.find(params[:id])
  end

  def update
    @labour = Labour.find(params[:id])
    @labour.update(labour_params)
    redirect_to patient_path(@patient)
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

  def labour_code_params
    params.require(:labour).permit(labour_codes_attributes: [:diagnostic])
  end
end
