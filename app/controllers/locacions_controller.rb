class LocacionsController < ApplicationController
  # GET /locacions
  # GET /locacions.json
  def index
    @locacions = Locacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locacions }
    end
  end

  # GET /locacions/1
  # GET /locacions/1.json
  def show
    @locacion = Locacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @locacion }
    end
  end

  # GET /locacions/new
  # GET /locacions/new.json
  def new
    @locacion = Locacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @locacion }
    end
  end

  # GET /locacions/1/edit
  def edit
    @locacion = Locacion.find(params[:id])
  end

  # POST /locacions
  # POST /locacions.json
  def create
    @locacion = Locacion.new(params[:locacion])

    respond_to do |format|
      if @locacion.save
        format.html { redirect_to @locacion, notice: 'Locacion was successfully created.' }
        format.json { render json: @locacion, status: :created, location: @locacion }
      else
        format.html { render action: "new" }
        format.json { render json: @locacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /locacions/1
  # PUT /locacions/1.json
  def update
    @locacion = Locacion.find(params[:id])

    respond_to do |format|
      if @locacion.update_attributes(params[:locacion])
        format.html { redirect_to @locacion, notice: 'Locacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @locacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locacions/1
  # DELETE /locacions/1.json
  def destroy
    @locacion = Locacion.find(params[:id])
    @locacion.destroy

    respond_to do |format|
      format.html { redirect_to locacions_url }
      format.json { head :no_content }
    end
  end
end
