class LaboursController < ApplicationController
  def new
    @patient = Patient.find(params[:patient_id])
    @category = Category.find(params[:category])
    @labour = Labour.new
    @labour.patient = @patient
    @labour.category = @category
    authorize @labour
  end

  def create
    @labour = Labour.new(labour_params)
    @labour.user = current_user
    authorize @labour
    if @labour.save
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
end
