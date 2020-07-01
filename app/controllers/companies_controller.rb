class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end
  
  def new
    @company = Company.new
  end

  def create
    @company = Company.create(company_params)
    # byebug
    params[:company][:offices_attributes].each_pair do |key, value|

      # byebug
      offices = value["offices"].drop_while {|entry| entry == ""}

      office.each do |floor|
        # byebug
        Office.create(building_id: value["id"].to_i, company_id: @company.id, floor: floor.to_i)
      end
    end

    #company_id
    #room number
    #Office.create(building_id: building_id, company_id: @company.id, floor: office_number)
    
    # byebug

    # @company.save
    redirect_to company_path(@company)
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end
end
