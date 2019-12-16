class RandomAccessMemoriesController < ApplicationController
  before_action :set_random_access_memory, only: [:show, :edit, :update, :destroy]

  # GET /random_access_memories
  # GET /random_access_memories.json
  # shows all ram in the index
  def index
    @random_access_memories = RandomAccessMemory.all
  end

  # GET /random_access_memories/1
  # GET /random_access_memories/1.json
  def show
  end

  # GET /random_access_memories/new
  def new
    @random_access_memory = RandomAccessMemory.new
  end

  # GET /random_access_memories/1/edit
  def edit
  end

  # POST /random_access_memories
  # POST /random_access_memories.json
  # creates the ram and redirects to the new ram once created
  def create
    @random_access_memory = RandomAccessMemory.new(random_access_memory_params)

    respond_to do |format|
      if @random_access_memory.save
        format.html { redirect_to @random_access_memory, notice: t('ramcon.ramcreate')  }
        format.json { render :show, status: :created, location: @random_access_memory }
      else
        format.html { render :new }
        format.json { render json: @random_access_memory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /random_access_memories/1
  # PATCH/PUT /random_access_memories/1.json
  #updates a ram using form and redirects once completed
  def update
    respond_to do |format|
      if @random_access_memory.update(random_access_memory_params)
        format.html { redirect_to @random_access_memory, notice: t('ramcon.ranudt') }
        format.json { render :show, status: :ok, location: @random_access_memory }
      else
        format.html { render :edit }
        format.json { render json: @random_access_memory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /random_access_memories/1
  # DELETE /random_access_memories/1.json
  #deletes an entry in ram table and redirects to ram index
  def destroy
    @random_access_memory.destroy
    respond_to do |format|
      format.html { redirect_to random_access_memories_url, notice: t('ramcon.ramdest') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_random_access_memory
      @random_access_memory = RandomAccessMemory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def random_access_memory_params
      params.require(:random_access_memory).permit(:rammake, :ddr, :mhz, :size)
    end
end
