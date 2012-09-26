class ExperiencedetailsController < ApplicationController
  # GET /experiencedetails
  # GET /experiencedetails.json
  def index
    @experiencedetails = Experiencedetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @experiencedetails }
    end
  end

  # GET /experiencedetails/1
  # GET /experiencedetails/1.json
  def show
    @experiencedetail = Experiencedetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @experiencedetail }
    end
  end

  # GET /experiencedetails/new
  # GET /experiencedetails/new.json
  def new
    @experiencedetail = Experiencedetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @experiencedetail }
    end
  end

  # GET /experiencedetails/1/edit
  def edit
    @experiencedetail = Experiencedetail.find(params[:id])
  end

  # POST /experiencedetails
  # POST /experiencedetails.json
  def create
    @experiencedetail = Experiencedetail.new(params[:experiencedetail])

    respond_to do |format|
      if @experiencedetail.save
        format.html { redirect_to @experiencedetail, notice: 'Experiencedetail was successfully created.' }
        format.json { render json: @experiencedetail, status: :created, location: @experiencedetail }
      else
        format.html { render action: "new" }
        format.json { render json: @experiencedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /experiencedetails/1
  # PUT /experiencedetails/1.json
  def update
    @experiencedetail = Experiencedetail.find(params[:id])

    respond_to do |format|
      if @experiencedetail.update_attributes(params[:experiencedetail])
        format.html { redirect_to @experiencedetail, notice: 'Experiencedetail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @experiencedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiencedetails/1
  # DELETE /experiencedetails/1.json
  def destroy
    @experiencedetail = Experiencedetail.find(params[:id])
    @experiencedetail.destroy

    respond_to do |format|
      format.html { redirect_to experiencedetails_url }
      format.json { head :no_content }
    end
  end
end
