class FichaRecintosController < ApplicationController
  before_action :set_ficha_recinto, only: [:show, :edit, :update, :destroy]

  # GET /ficha_recintos
  # GET /ficha_recintos.json
  def index
    @ficha_recintos = FichaRecinto.all
  end

  # GET /ficha_recintos/1
  # GET /ficha_recintos/1.json
  def show
  end

  # GET /ficha_recintos/new
  def new
    @ficha_recinto = FichaRecinto.new
  end

  # GET /ficha_recintos/1/edit
  def edit
  end

  # POST /ficha_recintos
  # POST /ficha_recintos.json
  def create
    @ficha_recinto = FichaRecinto.new(ficha_recinto_params)

    respond_to do |format|
      if @ficha_recinto.save
        format.html { redirect_to @ficha_recinto, notice: 'Ficha recinto was successfully created.' }
        format.json { render :show, status: :created, location: @ficha_recinto }
      else
        format.html { render :new }
        format.json { render json: @ficha_recinto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ficha_recintos/1
  # PATCH/PUT /ficha_recintos/1.json
  def update
    respond_to do |format|
      if @ficha_recinto.update(ficha_recinto_params)
        format.html { redirect_to @ficha_recinto, notice: 'Ficha recinto was successfully updated.' }
        format.json { render :show, status: :ok, location: @ficha_recinto }
      else
        format.html { render :edit }
        format.json { render json: @ficha_recinto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ficha_recintos/1
  # DELETE /ficha_recintos/1.json
  def destroy
    @ficha_recinto.destroy
    respond_to do |format|
      format.html { redirect_to ficha_recintos_url, notice: 'Ficha recinto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha_recinto
      @ficha_recinto = FichaRecinto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ficha_recinto_params
      params.require(:ficha_recinto).permit(:ficha_ingreso_id, :reo_id, :observaciones)
    end
end
