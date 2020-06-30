class BuildingsController < ApplicationController

    def index
        @buildings = Building.all
    end

    def show
        @building = Building.find(params[:id])
    end

    def edit
        @building = Building.find(params[:id])
    end
end