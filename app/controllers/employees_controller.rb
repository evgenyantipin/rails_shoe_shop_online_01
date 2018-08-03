class EmployeesController < ApplicationController
  layout "employee/application"
  before_action :logged_in_user
  before_action :verify_employee!

  def index; end

  private

  def verify_employee!
    return if current_user.employee?
    flash[:danger] = t "access_denied"
    redirect_to root_url
  end
end
