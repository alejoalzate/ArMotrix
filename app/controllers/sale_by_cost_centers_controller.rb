class SaleByCostCentersController < ApplicationController

  def index
    @sale_by_cost_centers = SaleByCostCenter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sale_by_cost_centers }
    end
  end

  def show
    @sale_by_cost_center = SaleByCostCenter.find(params[:id])
  end

  def new
    @sale_by_cost_center = SaleByCostCenter.new
  end

  def edit
    @sale_by_cost_center = SaleByCostCenter.find(params[:id])
  end

  def create
    @sale_by_cost_center = SaleByCostCenter.new(params[:sale_by_cost_center])
    render :action => :new unless @sale_by_cost_center.save
  end

  def update
    @sale_by_cost_center = SaleByCostCenter.find(params[:id])
    render :action => :edit unless @sale_by_cost_center.update_attributes(params[:sale_by_cost_center])
  end

  def destroy
    @sale_by_cost_center = SaleByCostCenter.find(params[:id])
    @sale_by_cost_center.destroy
  end
end
