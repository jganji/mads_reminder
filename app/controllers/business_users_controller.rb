class BusinessUsersController < ApplicationController
  # GET /business_users
  # GET /business_users.xml
  def index
    @business_users = BusinessUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @business_users }
    end
  end

  # GET /business_users/1
  # GET /business_users/1.xml
  def show
    @business_user = BusinessUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @business_user }
    end
  end

  # GET /business_users/new
  # GET /business_users/new.xml
  def new
    @business_user = BusinessUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @business_user }
    end
  end

  # GET /business_users/1/edit
  def edit
    @business_user = BusinessUser.find(params[:id])
  end

  # POST /business_users
  # POST /business_users.xml
  def create
    @business_user = BusinessUser.new(params[:business_user])

    respond_to do |format|
      if @business_user.save
        format.html { redirect_to(@business_user, :notice => 'Business user was successfully created.') }
        format.xml  { render :xml => @business_user, :status => :created, :location => @business_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @business_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /business_users/1
  # PUT /business_users/1.xml
  def update
    @business_user = BusinessUser.find(params[:id])

    respond_to do |format|
      if @business_user.update_attributes(params[:business_user])
        format.html { redirect_to(@business_user, :notice => 'Business user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @business_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /business_users/1
  # DELETE /business_users/1.xml
  def destroy
    @business_user = BusinessUser.find(params[:id])
    @business_user.destroy

    respond_to do |format|
      format.html { redirect_to(business_users_url) }
      format.xml  { head :ok }
    end
  end
end
