class BuildsController < ApplicationController
  before_action :set_build, only: [:show, :edit, :update, :destroy]
  # so that only logged in users can make new builds and edit them
  before_action :authenticate_user!, only: [:new, :edit]
  # GET /builds
  # GET /builds.json
  # shows all builds in the index
  def index
    @builds = Build.all
  end

  # GET /builds/1
  # GET /builds/1.json
  def show
  end

  # GET /builds/new
  def new
    @build = Build.new
  end

  # GET /builds/1/edit
  def edit
  end

  # POST /builds
  # POST /builds.json
  # creates the build and redirects to the new build once created
  def create
    @build = Build.new(build_params)

    respond_to do |format|
      if @build.save
        format.html { redirect_to @build, notice: t('buildcon.succreat') }
        format.json { render :show, status: :created, location: @build }
      else
        format.html { render :new }
        format.json { render json: @build.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /builds/1
  # PATCH/PUT /builds/1.json
  #updates a build using form and redirects once completed
  def update
    respond_to do |format|
      if @build.update(build_params)
        format.html { redirect_to @build, notice: t('buildcon.sucupd') }
        format.json { render :show, status: :ok, location: @build }
      else
        format.html { render :edit }
        format.json { render json: @build.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /builds/1
  # DELETE /builds/1.json
  #deletes an entry in builds table and redirects to builds index
  def destroy
    @build.destroy
    respond_to do |format|
      format.html { redirect_to builds_url, notice: t('buildcon.sucdes') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_build
      @build = Build.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def build_params
      params.require(:build).permit(:title, :cpu_id, :gpu_id,:ram_id, :description, :picture, :motherboard,:cpu_cooler,:case,:power_supply,:storage, :user_id)
    end
end
