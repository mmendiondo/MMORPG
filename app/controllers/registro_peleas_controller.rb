class RegistroPeleasController < ApplicationController
  # GET /registro_peleas
  # GET /registro_peleas.json
  def index
    @registro_peleas = RegistroPelea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @registro_peleas }
    end
  end

  # GET /registro_peleas/1
  # GET /registro_peleas/1.json
  def show
    @registro_pelea = RegistroPelea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @registro_pelea }
    end
  end

  # GET /registro_peleas/new
  # GET /registro_peleas/new.json
  def new
    @registro_pelea = RegistroPelea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @registro_pelea }
    end
  end

  # GET /registro_peleas/1/edit
  def edit
    @registro_pelea = RegistroPelea.find(params[:id])
  end

  # POST /registro_peleas
  # POST /registro_peleas.json
  def create
    @registro_pelea = RegistroPelea.new(params[:registro_pelea])

    respond_to do |format|
      if @registro_pelea.save
        format.html { redirect_to @registro_pelea, notice: 'Registro pelea was successfully created.' }
        format.json { render json: @registro_pelea, status: :created, location: @registro_pelea }
      else
        format.html { render action: "new" }
        format.json { render json: @registro_pelea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /registro_peleas/1
  # PUT /registro_peleas/1.json
  def update
    @registro_pelea = RegistroPelea.find(params[:id])

    respond_to do |format|
      if @registro_pelea.update_attributes(params[:registro_pelea])
        format.html { redirect_to @registro_pelea, notice: 'Registro pelea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @registro_pelea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_peleas/1
  # DELETE /registro_peleas/1.json
  def destroy
    @registro_pelea = RegistroPelea.find(params[:id])
    @registro_pelea.destroy

    respond_to do |format|
      format.html { redirect_to registro_peleas_url }
      format.json { head :no_content }
    end
  end
end
