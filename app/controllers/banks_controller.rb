class BanksController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @banks = Bank.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @banks }
    end
  end

  def show
    @bank = Bank.find(params[:id])
  end

  def new
    @bank = Bank.new
  end
  
  def edit
    @bank = Bank.find(params[:id])
  end
  
  def create
    @bank = Bank.new(params[:bank])
    render :action => :new unless @bank.save
  end
  
  def update
    @bank = Bank.find(params[:id])
    render :action => :edit unless @bank.update_attributes(params[:bank])
  end
  
  def destroy
    @bank = Bank.find(params[:id])
    @bank.destroy
  end
end
