class PervesController < ApplicationController
  # GET /perves
  # GET /perves.json
  def index
    @perves = Perf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @perves }
    end
  end

  # GET /perves/1
  # GET /perves/1.json
  def show
    @perf = Perf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @perf }
    end
  end

  # GET /perves/new
  # GET /perves/new.json
  def new
    @perf = Perf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @perf }
    end
  end

  # GET /perves/1/edit
  def edit
    @perf = Perf.find(params[:id])
  end

  # POST /perves
  # POST /perves.json
  def create
    @perf = Perf.new(params[:perf])

    respond_to do |format|
      if @perf.save
        format.html { redirect_to @perf, notice: 'Perf was successfully created.' }
        format.json { render json: @perf, status: :created, location: @perf }
      else
        format.html { render action: "new" }
        format.json { render json: @perf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /perves/1
  # PUT /perves/1.json
  def update
    @perf = Perf.find(params[:id])

    respond_to do |format|
      if @perf.update_attributes(params[:perf])
        format.html { redirect_to @perf, notice: 'Perf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @perf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perves/1
  # DELETE /perves/1.json
  def destroy
    @perf = Perf.find(params[:id])
    @perf.destroy

    respond_to do |format|
      format.html { redirect_to perves_url }
      format.json { head :no_content }
    end
  end
end
