class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @categories = Category.all
    @babies = Baby.all
    @labours = Labour.all
    @patients = policy_scope(Patient).order(created_at: :desc)
  end

  def login
  end
end
