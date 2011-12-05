class PositionsController < ApplicationController
  def index
    @position = params[:pid]
  end
  
  def show
    @position = Position.find_by_position(params[:pid])
    @title = @position.position
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @position }
    end
  end
  
  def new
    @position = Position.new
    
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
    @position = Position.find_by_position(params[:pid])
  end

end
