class WorkBlocksController < ApplicationController
  before_action :set_work_block, only: [:show, :edit, :update, :destroy]

  # GET /work_blocks
  # GET /work_blocks.json
  def index
    @work_blocks = WorkBlock.all
  end

  # GET /work_blocks/1
  # GET /work_blocks/1.json
  def show
  end

  # GET /work_blocks/new
  def new
    @work_block = WorkBlock.new
  end

  # GET /work_blocks/1/edit
  def edit
  end

  # POST /work_blocks
  # POST /work_blocks.json
  def create
    @work_block = WorkBlock.new(work_block_params)

    respond_to do |format|
      if @work_block.save
        format.html { redirect_to @work_block, notice: 'Work block was successfully created.' }
        format.json { render :show, status: :created, location: @work_block }
      else
        format.html { render :new }
        format.json { render json: @work_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_blocks/1
  # PATCH/PUT /work_blocks/1.json
  def update
    respond_to do |format|
      if @work_block.update(work_block_params)
        format.html { redirect_to @work_block, notice: 'Work block was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_block }
      else
        format.html { render :edit }
        format.json { render json: @work_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_blocks/1
  # DELETE /work_blocks/1.json
  def destroy
    @work_block.destroy
    respond_to do |format|
      format.html { redirect_to work_blocks_url, notice: 'Work block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_block
      @work_block = WorkBlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_block_params
      params.require(:work_block).permit(:start_time, :end_time)
    end
end
