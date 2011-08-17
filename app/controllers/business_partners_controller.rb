class BusinessPartnersController < ApplicationController
  # GET /business_partners
  # GET /business_partners.xml
  def index
    @business_partners = BusinessPartner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @business_partners }
    end
  end

  # GET /business_partners/1
  # GET /business_partners/1.xml
  def show
    @business_partner = BusinessPartner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @business_partner }
    end
  end

  # GET /business_partners/new
  # GET /business_partners/new.xml
  def new
    @business_partner = BusinessPartner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @business_partner }
    end
  end

  # GET /business_partners/1/edit
  def edit
    @business_partner = BusinessPartner.find(params[:id])
  end

  # POST /business_partners
  # POST /business_partners.xml
  def create
    @business_partner = BusinessPartner.new(params[:business_partner])

    respond_to do |format|
      if @business_partner.save
        format.html { redirect_to(@business_partner, :notice => 'Business partner was successfully created.') }
        format.xml  { render :xml => @business_partner, :status => :created, :location => @business_partner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @business_partner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /business_partners/1
  # PUT /business_partners/1.xml
  def update
    @business_partner = BusinessPartner.find(params[:id])

    respond_to do |format|
      if @business_partner.update_attributes(params[:business_partner])
        format.html { redirect_to(@business_partner, :notice => 'Business partner was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @business_partner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /business_partners/1
  # DELETE /business_partners/1.xml
  def destroy
    @business_partner = BusinessPartner.find(params[:id])
    @business_partner.destroy

    respond_to do |format|
      format.html { redirect_to(business_partners_url) }
      format.xml  { head :ok }
    end
  end
end
