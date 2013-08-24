class WorkOrdersController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @work_orders = WorkOrder.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @work_orders }
    end
  end

  def show
    @work_order = WorkOrder.find(params[:id])
  end

  def new
    @work_order = WorkOrder.new
  end
 
  def edit
    @work_order = WorkOrder.find(params[:id])
  end

  def create
    @work_order = WorkOrder.new(params[:work_order])
    render :action => :new unless @work_order.save
  end
  
  def update
    @work_order = WorkOrder.find(params[:id])
    render :action => :edit unless @work_order.update_attributes(params[:work_order])
  end
  
  def destroy
    @work_order = WorkOrder.find(params[:id])
    @work_order.destroy
  end
end
