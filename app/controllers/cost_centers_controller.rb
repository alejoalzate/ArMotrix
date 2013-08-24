class CostCentersController < ApplicationController


  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @cost_centers = CostCenter.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @cost_centers }
    end
  end

  def show
    @cost_center = CostCenter.find(params[:id])
  end

  def new
    @cost_center = CostCenter.new
  end

  def edit
    @cost_center = CostCenter.find(params[:id])
  end

  def create
    @cost_center = CostCenter.new(params[:cost_center])
    render :action => :new unless @cost_center.save
  end
 
  def update
    @cost_center = CostCenter.find(params[:id])
    render :action => :edit unless @cost_center.update_attributes(params[:cost_center])
  end
 
  def destroy
    @cost_center = CostCenter.find(params[:id])
    @cost_center.destroy
  end
end
