class HistoryOfVehiclesController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @history_of_vehicles = HistoryOfVehicle.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @history_of_vehicles }
    end
  end

  def show
    @history_of_vehicle = HistoryOfVehicle.find(params[:id])
  end

  def new
    @history_of_vehicle = HistoryOfVehicle.new
  end

  def edit
    @history_of_vehicle = HistoryOfVehicle.find(params[:id])
  end

  def create
    @history_of_vehicle = HistoryOfVehicle.new(params[:history_of_vehicle])
    render :action => :new unless @history_of_vehicle.save
  end
 
  def update
    @history_of_vehicle = HistoryOfVehicle.find(params[:id])
    render :action => :edit unless @history_of_vehicle.update_attributes(params[:history_of_vehicle])
  end
 
  def destroy
    @history_of_vehicle = HistoryOfVehicle.find(params[:id])
    @history_of_vehicle.destroy
  end
end
