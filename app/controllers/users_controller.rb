class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.search(params[:search]).page(params[:page]).per_page(5)
      respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @users }
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end 

  def create
    @user = User.new(params[:user])
    render :action => :new unless @user.save
  end

  def update
    #authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user], :as => :admin)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
    render :action => :edit unless @user.update_attributes(params[:user])
  end
    
  def destroy
    #authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "User deleted."
    else
      redirect_to users_path, :notice => "Can't delete yourself."
    end
  end
end