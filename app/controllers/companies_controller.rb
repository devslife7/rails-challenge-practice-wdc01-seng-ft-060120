class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end
  
  def new
    @company = Company.new
  end

  def create
    byebug
  end

  private

  def company_params
    params.require(:company).permit(:name, :floor)
  end
end
