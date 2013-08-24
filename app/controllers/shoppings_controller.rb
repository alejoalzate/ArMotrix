class ShoppingsController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @shoppings = Shopping.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @shoppings }
    end
  end

  def show
    @shopping = Shopping.find(params[:id])
  end

  def new
    @shopping = Shopping.new
  end

  def edit
    @shopping = Shopping.find(params[:id])
  end

  def create
    @shopping = Shopping.new(params[:shopping])
    render :action => :new unless @shopping.save
  end

  def update
    @shopping = Shopping.find(params[:id])
    render :action => :edit unless @shopping.update_attributes(params[:shopping])
  end
 
  def destroy
    @shopping = Shopping.find(params[:id])
    @shopping.destroy
  end
end
