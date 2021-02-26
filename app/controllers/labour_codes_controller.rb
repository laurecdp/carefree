class LabourCodesController < ApplicationController
  def new
    @labour_codes = LabourCode.new
    authorize @labour_codes
  end

  def create
    @labour_codes = LabourCode.new(labour_params)
    @labour_codes.user = current_user
    authorize @labour_codes
    if @labour_codes.save
      redirect_to dashboard_path
    else
      render :new
    end
  end
end
