class OpeningsController < ApplicationController

  def index
    @opening = Opening.all
    #@opening = params[:pid]
    #@opening = Opening.find(:all)
  end
  
  def show
    @opening = Opening.find_by_pid(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @opening }
      format.json { render :json => @opening }
    end
  end
  
  def new
    @opening = Opening.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @opening }
    end
  end
  
  def create
    @opening = Opening.new(params[:opening])

    respond_to do |format|
      if @opening.save
        #redirect_to("/#{@opening.pid}", :notice => 'Opening was created.')
        #format.html { redirect_to(@opening, :notice => 'Opening was successfully created.') }
        format.html { redirect_to opening_path(@opening.pid), :notice => 'Opening was successfully created.' }
        format.xml  { render :xml => @opening, :status => :created, :location => @opening }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @opening.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def edit
    @opening = Opening.find_by_pid(params[:id])
  end
  
  def show_report
    @opening = Opening.find_by_pid(params[:id])
  end

end
