class FormOfPaymentsController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @form_of_payments = FormOfPayment.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @form_of_payments }
    end
  end

  def show
    @form_of_payment = FormOfPayment.find(params[:id])
  end

  def new
    @form_of_payment = FormOfPayment.new
  end

  def edit
    @form_of_payment = FormOfPayment.find(params[:id])
  end

  def create
    @form_of_payment = FormOfPayment.new(params[:form_of_payment])
    render :action => :new unless @form_of_payment.save
  end

  def update
    @form_of_payment = FormOfPayment.find(params[:id])
    render :action => :edit unless @form_of_payment.update_attributes(params[:form_of_payment])
  end

  def destroy
    @form_of_payment = FormOfPayment.find(params[:id])
    @form_of_payment.destroy
  end
end
