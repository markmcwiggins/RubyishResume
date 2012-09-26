class ProfsocietiesController < ApplicationController
  # GET /profsocieties
  # GET /profsocieties.json
  def index
    @profsocieties = Profsociety.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profsocieties }
    end
  end

  # GET /profsocieties/1
  # GET /profsocieties/1.json
  def show
    @profsociety = Profsociety.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profsociety }
    end
  end

  # GET /profsocieties/new
  # GET /profsocieties/new.json
  def new
    @profsociety = Profsociety.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profsociety }
    end
  end

  # GET /profsocieties/1/edit
  def edit
    @profsociety = Profsociety.find(params[:id])
  end

  # POST /profsocieties
  # POST /profsocieties.json
  def create
    @profsociety = Profsociety.new(params[:profsociety])

    respond_to do |format|
      if @profsociety.save
        format.html { redirect_to @profsociety, notice: 'Profsociety was successfully created.' }
        format.json { render json: @profsociety, status: :created, location: @profsociety }
      else
        format.html { render action: "new" }
        format.json { render json: @profsociety.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profsocieties/1
  # PUT /profsocieties/1.json
  def update
    @profsociety = Profsociety.find(params[:id])

    respond_to do |format|
      if @profsociety.update_attributes(params[:profsociety])
        format.html { redirect_to @profsociety, notice: 'Profsociety was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profsociety.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profsocieties/1
  # DELETE /profsocieties/1.json
  def destroy
    @profsociety = Profsociety.find(params[:id])
    @profsociety.destroy

    respond_to do |format|
      format.html { redirect_to profsocieties_url }
      format.json { head :no_content }
    end
  end
end
