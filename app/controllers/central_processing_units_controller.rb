class CentralProcessingUnitsController < ApplicationController
  before_action :set_central_processing_unit, only: [:show, :edit, :update, :destroy]

  # GET /central_processing_units
  # GET /central_processing_units.json
  # shows all cpus in the index
  def index
    @central_processing_units = CentralProcessingUnit.all
  end

  # GET /central_processing_units/1
  # GET /central_processing_units/1.json
  def show
  end

  # GET /central_processing_units/new
  def new
    @central_processing_unit = CentralProcessingUnit.new
  end

  # GET /central_processing_units/1/edit
  def edit
  end

  # POST /central_processing_units
  # POST /central_processing_units.json
  # creates the cpu and redirects to the new cpu once created
  def create
    @central_processing_unit = CentralProcessingUnit.new(central_processing_unit_params)

    respond_to do |format|
      if @central_processing_unit.save
        format.html { redirect_to @central_processing_unit, notice: t('cpucon.cpucreate') }
        format.json { render :show, status: :created, location: @central_processing_unit }
      else
        format.html { render :new }
        format.json { render json: @central_procechipmakessing_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /central_processing_units/1
  # PATCH/PUT /central_processing_units/1.json
  #updates a cpu using form and redirects once completed
  def update
    respond_to do |format|
      if @central_processing_unit.update(central_processing_unit_params)
        format.html { redirect_to @central_processing_unit, notice: t('cpucon.cpuupdt') }
        format.json { render :show, status: :ok, location: @central_processing_unit }
      else
        format.html { render :edit }
        format.json { render json: @central_processing_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /central_processing_units/1
  # DELETE /central_processing_units/1.json
  #deletes an entry in cpus table and redirects to cpu index
  def destroy
    @central_processing_unit.destroy
    respond_to do |format|
      format.html { redirect_to central_processing_units_url, notice: t('cpucon.cpudest') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_central_processing_unit
      @central_processing_unit = CentralProcessingUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def central_processing_unit_params
      params.require(:central_processing_unit).permit(:chipmake, :chipmodel)
    end
end
