class MisionsController < ApplicationController
  # GET /misions
  # GET /misions.json
  def index
    @misions = Mision.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @misions }
    end
  end

  # GET /misions/1
  # GET /misions/1.json
  def show
    @mision = Mision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mision }
    end
  end

  # GET /misions/new
  # GET /misions/new.json
  def new
    @mision = Mision.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mision }
    end
  end

  # GET /misions/1/edit
  def edit
    @mision = Mision.find(params[:id])
  end

  # POST /misions
  # POST /misions.json
  def create
    @mision = Mision.new(params[:mision])

    respond_to do |format|
      if @mision.save
        format.html { redirect_to @mision, notice: 'Mision was successfully created.' }
        format.json { render json: @mision, status: :created, location: @mision }
      else
        format.html { render action: "new" }
        format.json { render json: @mision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /misions/1
  # PUT /misions/1.json
  def update
    @mision = Mision.find(params[:id])

    respond_to do |format|
      if @mision.update_attributes(params[:mision])
        format.html { redirect_to @mision, notice: 'Mision was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /misions/1
  # DELETE /misions/1.json
  def destroy
    @mision = Mision.find(params[:id])
    @mision.destroy

    respond_to do |format|
      format.html { redirect_to misions_url }
      format.json { head :no_content }
    end
  end
end
