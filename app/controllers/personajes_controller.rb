class PersonajesController < ApplicationController
  # GET /personajes
  # GET /personajes.json
  def index
    @personajes = Personaje.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personajes }
    end
  end

  # GET /personajes/1
  # GET /personajes/1.json
  def show
    @personaje = Personaje.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personaje }
    end
  end

  # GET /personajes/new
  # GET /personajes/new.json
  def new
    @personaje = Personaje.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personaje }
    end
  end

  # GET /personajes/1/edit
  def edit
    @personaje = Personaje.find(params[:id])
  end

  # POST /personajes
  # POST /personajes.json
  def create
    @personaje = Personaje.new(params[:personaje])

    respond_to do |format|
      if @personaje.save
        format.html { redirect_to @personaje, notice: 'Personaje was successfully created.' }
        format.json { render json: @personaje, status: :created, location: @personaje }
      else
        format.html { render action: "new" }
        format.json { render json: @personaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personajes/1
  # PUT /personajes/1.json
  def update
    @personaje = Personaje.find(params[:id])

    respond_to do |format|
      if @personaje.update_attributes(params[:personaje])
        format.html { redirect_to @personaje, notice: 'Personaje was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personajes/1
  # DELETE /personajes/1.json
  def destroy
    @personaje = Personaje.find(params[:id])
    @personaje.destroy

    respond_to do |format|
      format.html { redirect_to personajes_url }
      format.json { head :no_content }
    end
  end
end
