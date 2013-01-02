class TipoPersonajesController < ApplicationController
  # GET /tipo_personajes
  # GET /tipo_personajes.json
  def index
    @tipo_personajes = TipoPersonaje.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_personajes }
    end
  end

  # GET /tipo_personajes/1
  # GET /tipo_personajes/1.json
  def show
    @tipo_personaje = TipoPersonaje.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_personaje }
    end
  end

  # GET /tipo_personajes/new
  # GET /tipo_personajes/new.json
  def new
    @tipo_personaje = TipoPersonaje.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_personaje }
    end
  end

  # GET /tipo_personajes/1/edit
  def edit
    @tipo_personaje = TipoPersonaje.find(params[:id])
  end

  # POST /tipo_personajes
  # POST /tipo_personajes.json
  def create
    @tipo_personaje = TipoPersonaje.new(params[:tipo_personaje])

    respond_to do |format|
      if @tipo_personaje.save
        format.html { redirect_to @tipo_personaje, notice: 'Tipo personaje was successfully created.' }
        format.json { render json: @tipo_personaje, status: :created, location: @tipo_personaje }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_personaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_personajes/1
  # PUT /tipo_personajes/1.json
  def update
    @tipo_personaje = TipoPersonaje.find(params[:id])

    respond_to do |format|
      if @tipo_personaje.update_attributes(params[:tipo_personaje])
        format.html { redirect_to @tipo_personaje, notice: 'Tipo personaje was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_personaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_personajes/1
  # DELETE /tipo_personajes/1.json
  def destroy
    @tipo_personaje = TipoPersonaje.find(params[:id])
    @tipo_personaje.destroy

    respond_to do |format|
      format.html { redirect_to tipo_personajes_url }
      format.json { head :no_content }
    end
  end
end
