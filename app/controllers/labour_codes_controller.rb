class LabourCodesController < ApplicationController
  def new
    @categories = Category.all
    @labour_codes = LabourCode.new
    authorize @labour_codes
  end

  def create
    @categories = Category.all
    @labour_codes = LabourCode.new(labour_codes_params)
    authorize @labour_codes
    raise
    if @labour_codes.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def labour_codes_params
    params.require(:labour_code).permit(:diagnostic,
                                        :labour_id,
                                        :code_id)
  end
end
