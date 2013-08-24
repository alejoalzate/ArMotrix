class CashReceiptsController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @cash_receipts = CashReceipt.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @cash_receipts }
    end
  end

  def show
    @cash_receipt = CashReceipt.find(params[:id])
  end

  def new
    @cash_receipt = CashReceipt.new
  end

  def edit
    @cash_receipt = CashReceipt.find(params[:id])
  end

  def create
    @cash_receipt = CashReceipt.new(params[:cash_receipt])
    render :action => :new unless @cash_receipt.save
  end

  def update
    @cash_receipt = CashReceipt.find(params[:id])
    render :action => :edit unless @cash_receipt.update_attributes(params[:cash_receipt])
  end

  def destroy
    @cash_receipt = CashReceipt.find(params[:id])
    @cash_receipt.destroy
  end
end
