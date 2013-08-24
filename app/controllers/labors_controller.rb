class LaborsController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @labors = Labor.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @labors }
    end
  end

  def show
    @labor = Labor.find(params[:id])
  end

  def new
    @labor = Labor.new
  end

  def edit
    @labor = Labor.find(params[:id])
  end

  def create
    @labor = Labor.new(params[:labor])
    render :action => :new unless @labor.save
  end

  def update
    @labor = Labor.find(params[:id])
    render :action => :edit unless @labor.update_attributes(params[:labor])
  end

  def destroy
    @labor = Labor.find(params[:id])
    @labor.destroy
  end
end
