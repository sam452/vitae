class OpeningsController < ApplicationController

  def index
    @opening = params[:position]
  end
  
  def show
    @opening = Position.find_by_position(params[:position])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @position }
    end
  end
  
  def new
    @opening = Position.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @position }
    end
  end
  
  def edit
    @opening = Position.find(params[:position])
  end

end
