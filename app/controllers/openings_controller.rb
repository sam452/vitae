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
    @opening = Position.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @opening }
    end
  end
  
  def create
    @position = Position.new(params[:position])
    if @position.save
      #
    else
      render 'new'
    end
  end
  
  def create
    @opening = Position.new(params[:position])

    respond_to do |format|
      if @opening.save
        format.html { redirect_to(@opening, :notice => 'Opening was successfully created.') }
        format.xml  { render :xml => @opening, :status => :created, :location => @opening }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @opening.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def edit
    @position = Position.find(params[:pid])
  end
  
  def show_report
    @position = Position.find_by_pid(params[:pid])
  end

end
