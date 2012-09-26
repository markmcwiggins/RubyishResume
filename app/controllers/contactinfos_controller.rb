class ContactinfosController < ApplicationController

  # GET /contactinfos
  # GET /contactinfos.json
  def index
    @contactinfos = Contactinfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contactinfos }
    end
  end

  # GET /contactinfos/1
  # GET /contactinfos/1.json
  def show
    @contactinfo = Contactinfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contactinfo }
    end
  end

  # GET /contactinfos/new
  # GET /contactinfos/new.json
  def new
    @contactinfo = Contactinfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contactinfo }
    end
  end

  # GET /contactinfos/1/edit
  def edit
    @contactinfo = Contactinfo.find(params[:id])
  end

  # POST /contactinfos
  # POST /contactinfos.json
  def create
    @contactinfo = Contactinfo.new(params[:contactinfo])

    respond_to do |format|
      if @contactinfo.save
        format.html { redirect_to @contactinfo, notice: 'Contactinfo was successfully created.' }
        format.json { render json: @contactinfo, status: :created, location: @contactinfo }
      else
        format.html { render action: "new" }
        format.json { render json: @contactinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contactinfos/1
  # PUT /contactinfos/1.json
  def update
    @contactinfo = Contactinfo.find(params[:id])

    respond_to do |format|
      if @contactinfo.update_attributes(params[:contactinfo])
        format.html { redirect_to @contactinfo, notice: 'Contactinfo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contactinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactinfos/1
  # DELETE /contactinfos/1.json
  def destroy
    @contactinfo = Contactinfo.find(params[:id])
    @contactinfo.destroy

    respond_to do |format|
      format.html { redirect_to contactinfos_url }
      format.json { head :no_content }
    end
  end
end
