class PersonajeMisionsController < ApplicationController
  # GET /personaje_misions
  # GET /personaje_misions.json
  def index
    @personaje_misions = PersonajeMision.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personaje_misions }
    end
  end

  # GET /personaje_misions/1
  # GET /personaje_misions/1.json
  def show
    @personaje_mision = PersonajeMision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personaje_mision }
    end
  end

  # GET /personaje_misions/new
  # GET /personaje_misions/new.json
  def new
    @personaje_mision = PersonajeMision.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personaje_mision }
    end
  end

  # GET /personaje_misions/1/edit
  def edit
    @personaje_mision = PersonajeMision.find(params[:id])
  end

  # POST /personaje_misions
  # POST /personaje_misions.json
  def create
    @personaje_mision = PersonajeMision.new(params[:personaje_mision])

    respond_to do |format|
      if @personaje_mision.save
        format.html { redirect_to @personaje_mision, notice: 'Personaje mision was successfully created.' }
        format.json { render json: @personaje_mision, status: :created, location: @personaje_mision }
      else
        format.html { render action: "new" }
        format.json { render json: @personaje_mision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personaje_misions/1
  # PUT /personaje_misions/1.json
  def update
    @personaje_mision = PersonajeMision.find(params[:id])

    respond_to do |format|
      if @personaje_mision.update_attributes(params[:personaje_mision])
        format.html { redirect_to @personaje_mision, notice: 'Personaje mision was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personaje_mision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personaje_misions/1
  # DELETE /personaje_misions/1.json
  def destroy
    @personaje_mision = PersonajeMision.find(params[:id])
    @personaje_mision.destroy

    respond_to do |format|
      format.html { redirect_to personaje_misions_url }
      format.json { head :no_content }
    end
  end
end
