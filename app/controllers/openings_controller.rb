class OpeningsController < ApplicationController

  def index
    @opening = params[:position]
  end
  
  def show
    @opening = Position.find_by_pid(params[:pid])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @opening }
    end
  end
  
  def new
    @opening = Position.new(params[:position])
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @opening }
    end
  end
  
  def create
    @position = Position.new(params[:pid])
    if @user.save
      #
    else
      render 'new'
    end
  end
  
  def edit
    @position = Position.find_by_pid(params[:pid])
  end
  
  def show_report
    @position = Position.find_by_pid(params[:pid])
  end

end
