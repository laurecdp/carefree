class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @categories = Category.all
    @babies = Baby.all
    @labours = Labour.all
    @patients = policy_scope(Patient).order(created_at: :desc)
    if params[:search] && params[:search][:query]
      @patients = Patient.search_by_last_name_and_first_name(params[:search][:query])
    end
    # COMMENTS FOR THE WHOLE TEAM, DO NOT DELETE code below is linked to filter-patients.js
    # we receive a json from the search bar in the dashboard.html.erb with the class search-patient-form
    respond_to do |format|
      format.html
      format.json {render json: { html: render_to_string(partial: "shared/list-of-patients", formats: :html) }}
    end
  end

  def login
  end
end
