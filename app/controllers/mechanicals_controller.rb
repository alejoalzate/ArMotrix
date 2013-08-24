class MechanicalsController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @mechanicals = Mechanical.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @mechanicals }
    end
  end

  def show
    @mechanical = Mechanical.find(params[:id])
  end

  def new
    @mechanical = Mechanical.new
  end

  def edit
    @mechanical = Mechanical.find(params[:id])
  end

  def create
    @mechanical = Mechanical.new(params[:mechanical])
    render :action => :new unless @mechanical.save
  end

  def update
    @mechanical = Mechanical.find(params[:id])
    render :action => :edit unless @mechanical.update_attributes(params[:mechanical])
  end

  def destroy
    @mechanical = Mechanical.find(params[:id])
    @mechanical.destroy
  end
end
