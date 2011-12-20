class OpeningsController < ApplicationController

  def index
    #@opening = Opening.all
    #@opening = params[:pid]
    @opening = Opening.find(:all)
  end
  
  def admin
    #@opening = Opening.all
    #@opening = params[:pid]
    @opening = Opening.find(:all)
  end
  
  def show
    @opening = Opening.find(params[:id])
    
    #if @opening?
      respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @opening }
        format.json { render :json => @opening }
      end
    # else
     #  render :template => "openings/error"
     
   # end
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
        format.html { redirect_to(@opening, :notice => 'Opening was successfully created.') }
        #format.html { redirect_to opening_path(@opening.id), :notice => 'Opening was successfully created.' }
        format.xml  { render :xml => @opening, :status => :created, :location => @opening }
        format.json  { render json: @opening, status: :created, location: @opening }
     else
        format.html { render :action => "new" }
        format.xml  { render :xml => @opening.errors, :status => :unprocessable_entity }
        format.json { render json: @opening.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    @opening = Opening.find(params[:id])
  end
  

  def update
    #@opening = Opening.find(params[:opening]) because form_for is pulling convention.
    @opening = Opening.find(params[:id])
#debugger
    respond_to do |format|
      if @opening.update_attributes(params[:opening]) # not :id
        #redirect_to("/#{@opening.pid}", :notice => 'Opening was created.')
        #format.html { redirect_to(@opening, :notice => 'Opening was successfully created.') }
        format.html { redirect_to opening_path(@opening.id), :notice => 'Opening was updated.' }
        format.xml  { render :xml => @opening, :status => :created, :location => @opening }
      else
        format.html { render :action => "/openings/edit/:pid" }
        format.xml  { render :xml => @opening.errors, :status => :unprocessable_entity }
      end
    end
  end
 # /openings/:id
  def show_report
    @opening=Opening.find(:all)
  end

end
