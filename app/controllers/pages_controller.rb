class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @categories = Category.all
    @baby = Baby.new
    @patients = Patient.all
    @patients = policy_scope(Patient).order(created_at: :desc)
    if params[:search] && params[:search][:query]
      @patients = Patient.search_by_last_name_and_first_name(params[:search][:query])
    else
      @patients = policy_scope(Patient).order(created_at: :desc)
    end
  end

  def login
  end
  
end
