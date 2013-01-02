class MisionMisionsController < ApplicationController
  # GET /mision_misions
  # GET /mision_misions.json
  def index
    @mision_misions = MisionMision.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mision_misions }
    end
  end

  # GET /mision_misions/1
  # GET /mision_misions/1.json
  def show
    @mision_mision = MisionMision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mision_mision }
    end
  end

  # GET /mision_misions/new
  # GET /mision_misions/new.json
  def new
    @mision_mision = MisionMision.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mision_mision }
    end
  end

  # GET /mision_misions/1/edit
  def edit
    @mision_mision = MisionMision.find(params[:id])
  end

  # POST /mision_misions
  # POST /mision_misions.json
  def create
    @mision_mision = MisionMision.new(params[:mision_mision])

    respond_to do |format|
      if @mision_mision.save
        format.html { redirect_to @mision_mision, notice: 'Mision mision was successfully created.' }
        format.json { render json: @mision_mision, status: :created, location: @mision_mision }
      else
        format.html { render action: "new" }
        format.json { render json: @mision_mision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mision_misions/1
  # PUT /mision_misions/1.json
  def update
    @mision_mision = MisionMision.find(params[:id])

    respond_to do |format|
      if @mision_mision.update_attributes(params[:mision_mision])
        format.html { redirect_to @mision_mision, notice: 'Mision mision was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mision_mision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mision_misions/1
  # DELETE /mision_misions/1.json
  def destroy
    @mision_mision = MisionMision.find(params[:id])
    @mision_mision.destroy

    respond_to do |format|
      format.html { redirect_to mision_misions_url }
      format.json { head :no_content }
    end
  end
end
