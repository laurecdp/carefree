class LaboursController < ApplicationController

  def new
    @labour = Labour.new
    authorize @labour
  end

  def create
    @labour = Labour.new("")
    raise
    @labour.user = current_user
    authorize @labour
    if @labour.save
      redirect_to labour_path(@labour)
    else
      render :show
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
    params.require(:labour).permit(:name)
    # params.require(:labour).permit(:name, :labour_start_at, :labour_end_at, :labour_start, :labour_end, :artificial_labour, :anaesthesia_category, :anaesthesia_general, :anaesthesia_loco_general, :anaesthesia_moment, :labour_drugs, :labour_complication_type, :labour_actes, :anaesthesia_complication, :caesarean, :labour_complication, :labour_actes_done, :patient_id, :user_id, :category_id, :created_at, :updated_at)
  end
end
