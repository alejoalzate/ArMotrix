class ProfilesController < ApplicationController

  def index
    #para rails 3.2.9 hasta 3.2.12(última versión a abril-2013)
      @profiles = Profile.search(params[:search]).page(params[:page]).per_page(5)
        respond_to do |format|
        format.html # index.html.erb
        format.xml { render :xml => @profiles }
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end 

  def edit
    @profile = Profile.find(params[:id])
  end

  def create
    @profile = Profile.new(params[:profile])
    render :action => :new unless @profile.save
  end

  def update
    @profile = Profile.find(params[:id])
    render :action => :edit unless @profile.update_attributes(params[:profile])
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
  end
end
