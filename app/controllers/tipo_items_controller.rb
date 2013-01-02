class TipoItemsController < ApplicationController
  # GET /tipo_items
  # GET /tipo_items.json
  def index
    @tipo_items = TipoItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_items }
    end
  end

  # GET /tipo_items/1
  # GET /tipo_items/1.json
  def show
    @tipo_item = TipoItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_item }
    end
  end

  # GET /tipo_items/new
  # GET /tipo_items/new.json
  def new
    @tipo_item = TipoItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_item }
    end
  end

  # GET /tipo_items/1/edit
  def edit
    @tipo_item = TipoItem.find(params[:id])
  end

  # POST /tipo_items
  # POST /tipo_items.json
  def create
    @tipo_item = TipoItem.new(params[:tipo_item])

    respond_to do |format|
      if @tipo_item.save
        format.html { redirect_to @tipo_item, notice: 'Tipo item was successfully created.' }
        format.json { render json: @tipo_item, status: :created, location: @tipo_item }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_items/1
  # PUT /tipo_items/1.json
  def update
    @tipo_item = TipoItem.find(params[:id])

    respond_to do |format|
      if @tipo_item.update_attributes(params[:tipo_item])
        format.html { redirect_to @tipo_item, notice: 'Tipo item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_items/1
  # DELETE /tipo_items/1.json
  def destroy
    @tipo_item = TipoItem.find(params[:id])
    @tipo_item.destroy

    respond_to do |format|
      format.html { redirect_to tipo_items_url }
      format.json { head :no_content }
    end
  end
end
