class AccountPayablesController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @account_payables = AccountPayable.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @account_payables }
    end
  end

  def show
    @account_payable = AccountPayable.find(params[:id])
  end

  def new
    @account_payable = AccountPayable.new
  end

  def edit
    @account_payable = AccountPayable.find(params[:id])
  end

  def create
    @account_payable = AccountPayable.new(params[:account_payable])
    render :action => :new unless @account_payable.save
  end

  def update
    @account_payable = AccountPayable.find(params[:id])
    render :action => :edit unless @account_payable.update_attributes(params[:account_payable])
  end

  def destroy
    @account_payable = AccountPayable.find(params[:id])
    @account_payable.destroy
  end
end
