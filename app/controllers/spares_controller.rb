class SparesController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @spares = Spare.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @spares }
    end
  end

  def show
    @spare = Spare.find(params[:id])
  end

  def new
    @spare = Spare.new
  end

  def edit
    @spare = Spare.find(params[:id])
  end

  def create
    @spare = Spare.new(params[:spare])
    render :action => :new unless @spare.save
  end

  def update
    @spare = Spare.find(params[:id])
    render :action => :edit unless @spare.update_attributes(params[:spare])
  end

  def destroy
    @spare = Spare.find(params[:id])
    @spare.destroy
  end
end
