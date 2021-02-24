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
    @baby = Baby.new
    authorize @baby
  end

  def create
    @baby = Baby.new(babies_params)
    @baby.user = current_user
    authorize @baby
    if @baby.save
      redirect_to dashboard_path
    else
      render "babies/new"
    end
  end

private

  def babies_params
    params.require(:baby).permit(:first_name, :last_name, :birth_date, :alive, :description)
  end
end
