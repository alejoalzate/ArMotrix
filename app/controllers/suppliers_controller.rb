class SuppliersController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @suppliers = Supplier.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @suppliers }
    end
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def new
    @supplier = Supplier.new
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def create
    @supplier = Supplier.new(params[:supplier])
    render :action => :new unless @supplier.save
  end

  def update
    @supplier = Supplier.find(params[:id])
    render :action => :edit unless @supplier.update_attributes(params[:supplier])
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
  end
end
