class DocumentsController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @documents = Document.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @documents }
    end
  end

  def show
    @document = Document.find(params[:id])
  end

  def new
    @document = Document.new
  end

  def edit
    @document = Document.find(params[:id])
  end

  def create
    @document = Document.new(params[:document])
    render :action => :new unless @document.save
  end

  def update
    @document = Document.find(params[:id])
    render :action => :edit unless @document.update_attributes(params[:document])
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
  end
end
