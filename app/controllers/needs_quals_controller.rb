class NeedsQualsController < ApplicationController
  # GET /needs_quals
  # GET /needs_quals.json
  def index
    @needs_quals = NeedsQual.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @needs_quals }
    end
  end

  # GET /needs_quals/1
  # GET /needs_quals/1.json
  def show
    @needs_qual = NeedsQual.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @needs_qual }
    end
  end

  # GET /needs_quals/new
  # GET /needs_quals/new.json
  def new
    @needs_qual = NeedsQual.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @needs_qual }
    end
  end

  # GET /needs_quals/1/edit
  def edit
    @needs_qual = NeedsQual.find(params[:id])
  end

  # POST /needs_quals
  # POST /needs_quals.json
  def create
    @needs_qual = NeedsQual.new(params[:needs_qual])

    respond_to do |format|
      if @needs_qual.save
        format.html { redirect_to @needs_qual, notice: 'Needs qual was successfully created.' }
        format.json { render json: @needs_qual, status: :created, location: @needs_qual }
      else
        format.html { render action: "new" }
        format.json { render json: @needs_qual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /needs_quals/1
  # PUT /needs_quals/1.json
  def update
    @needs_qual = NeedsQual.find(params[:id])

    respond_to do |format|
      if @needs_qual.update_attributes(params[:needs_qual])
        format.html { redirect_to @needs_qual, notice: 'Needs qual was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @needs_qual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /needs_quals/1
  # DELETE /needs_quals/1.json
  def destroy
    @needs_qual = NeedsQual.find(params[:id])
    @needs_qual.destroy

    respond_to do |format|
      format.html { redirect_to needs_quals_url }
      format.json { head :no_content }
    end
  end
end
