class PtosController < ApplicationController
  before_action :set_pto, only: [:show, :edit, :update, :destroy]

  # GET /ptos
  # GET /ptos.json
  def index
    debugger
    @ptos = Pto.by_month(params[:month])
  end

  # GET /ptos/1
  # GET /ptos/1.json
  def show
  end

  # GET /ptos/new
  def new
    @pto = Pto.new
  end

  # GET /ptos/1/edit
  def edit
  end

  # POST /ptos
  # POST /ptos.json
  def create
    @pto = Pto.new(pto_params)

    respond_to do |format|
      if @pto.save
        format.html { redirect_to @pto, notice: 'Pto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pto }
      else
        format.html { render action: 'new' }
        format.json { render json: @pto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ptos/1
  # PATCH/PUT /ptos/1.json
  def update
    respond_to do |format|
      if @pto.update(pto_params)
        format.html { redirect_to @pto, notice: 'Pto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ptos/1
  # DELETE /ptos/1.json
  def destroy
    @pto.destroy
    respond_to do |format|
      format.html { redirect_to ptos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pto
      @pto = Pto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pto_params
      params.require(:pto).permit(:description, :date, :month)
    end
end
