class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
    @employee.company_id = params[:company_id]
  end
  
  def create
    @employee = Employee.create(employee_params)
    @employee.company_id = params[:company_id]
    @employee.save
    redirect_to company_path(@employee.company_id)
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :title, :company_id)
  end
end
