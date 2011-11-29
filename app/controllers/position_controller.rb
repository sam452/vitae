class PositionController < ApplicationController

  def index
    @position = params[:position]
  end
  
  def show
    @alpha = Position.find_by_position(params[:position])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @position }
    end
  end
  
  def new
    @position = Position.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @position }
    end
  end
  
  def edit
    @position = Position.find(params[:position])
  end

end
