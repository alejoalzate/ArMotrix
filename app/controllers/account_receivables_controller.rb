class AccountReceivablesController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @account_receivables = AccountReceivable.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @account_receivables }
    end
  end

  def show
    @account_receivable = AccountReceivable.find(params[:id])
  end

  def new
    @account_receivable = AccountReceivable.new
  end

  def edit
    @account_receivable = AccountReceivable.find(params[:id])
  end

  def create
    @account_receivable = AccountReceivable.new(params[:account_receivable])
    render :action => :new unless @account_receivable.save
  end

  def update
    @account_receivable = AccountReceivable.find(params[:id])
    render :action => :edit unless @account_receivable.update_attributes(params[:account_receivable])
  end

  def destroy
    @account_receivable = AccountReceivable.find(params[:id])
    @account_receivable.destroy
  end
end
