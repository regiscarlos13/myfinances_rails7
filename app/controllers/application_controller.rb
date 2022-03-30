# frozen_string_literal: true

class ApplicationController < ActionController::Base # :nodoc:
  before_action :authenticate_user!
  before_action :set_year

  layout :layout_by_resource

  def year_cookies
    cookies.encrypted[:selected_year] = params[:year_select]
    redirect_to root_path
  end

  def set_year
    @year = cookies.encrypted[:selected_year]
    @budget = Budget.find_by(year: "#{@year}-01-01".."#{@year}-12-31")
  end

  def layout_by_resource
    devise_controller? ? 'devise' : 'application'
  end
end
