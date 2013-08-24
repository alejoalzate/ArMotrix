class CustomersController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @customers = Customer.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @customers }
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(params[:customer])
    render :action => :new unless @customer.save
  end

  def update
    @customer = Customer.find(params[:id])
    render :action => :edit unless @customer.update_attributes(params[:customer])
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
  end
end
