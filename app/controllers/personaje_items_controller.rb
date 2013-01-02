class PersonajeItemsController < ApplicationController
  # GET /personaje_items
  # GET /personaje_items.json
  def index
    @personaje_items = PersonajeItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personaje_items }
    end
  end

  # GET /personaje_items/1
  # GET /personaje_items/1.json
  def show
    @personaje_item = PersonajeItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personaje_item }
    end
  end

  # GET /personaje_items/new
  # GET /personaje_items/new.json
  def new
    @personaje_item = PersonajeItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personaje_item }
    end
  end

  # GET /personaje_items/1/edit
  def edit
    @personaje_item = PersonajeItem.find(params[:id])
  end

  # POST /personaje_items
  # POST /personaje_items.json
  def create
    @personaje_item = PersonajeItem.new(params[:personaje_item])

    respond_to do |format|
      if @personaje_item.save
        format.html { redirect_to @personaje_item, notice: 'Personaje item was successfully created.' }
        format.json { render json: @personaje_item, status: :created, location: @personaje_item }
      else
        format.html { render action: "new" }
        format.json { render json: @personaje_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personaje_items/1
  # PUT /personaje_items/1.json
  def update
    @personaje_item = PersonajeItem.find(params[:id])

    respond_to do |format|
      if @personaje_item.update_attributes(params[:personaje_item])
        format.html { redirect_to @personaje_item, notice: 'Personaje item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personaje_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personaje_items/1
  # DELETE /personaje_items/1.json
  def destroy
    @personaje_item = PersonajeItem.find(params[:id])
    @personaje_item.destroy

    respond_to do |format|
      format.html { redirect_to personaje_items_url }
      format.json { head :no_content }
    end
  end
end
