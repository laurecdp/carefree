class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :dashboard ]

  def home
    if user_signed_in?
      redirect_to dashboard_path
    end
  end

  def dashboard
  end
end
