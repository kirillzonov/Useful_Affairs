class AffairsController < ApplicationController
  # GET /affairs
  # GET /affairs.xml
  def index
    @affairs = Affair.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @affairs }
    end
  end

  # GET /affairs/1
  # GET /affairs/1.xml
  def show
    @affair = Affair.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @affair }
    end
  end

  # GET /affairs/new
  # GET /affairs/new.xml
  def new
    @affair = Affair.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @affair }
    end
  end

  # GET /affairs/1/edit
  def edit
    @affair = Affair.find(params[:id])
  end

  # POST /affairs
  # POST /affairs.xml
  def create
    @affair = Affair.new(params[:affair])

    respond_to do |format|
      if @affair.save
        format.html { redirect_to(@affair, :notice => 'Affair was successfully created.') }
        format.xml  { render :xml => @affair, :status => :created, :location => @affair }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @affair.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /affairs/1
  # PUT /affairs/1.xml
  def update
    @affair = Affair.find(params[:id])

    respond_to do |format|
      if @affair.update_attributes(params[:affair])
        format.html { redirect_to(@affair, :notice => 'Affair was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @affair.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /affairs/1
  # DELETE /affairs/1.xml
  def destroy
    @affair = Affair.find(params[:id])
    @affair.destroy

    respond_to do |format|
      format.html { redirect_to(affairs_url) }
      format.xml  { head :ok }
    end
  end
end
