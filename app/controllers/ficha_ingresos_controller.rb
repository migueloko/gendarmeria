class FichaIngresosController < ApplicationController
  before_action :set_ficha_ingreso, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, :index]

  # GET /ficha_ingresos
  # GET /ficha_ingresos.json
  def index
    @ficha_ingresos = FichaIngreso.all
  end

  # GET /ficha_ingresos/1
  # GET /ficha_ingresos/1.json
  def show
  end

  # GET /ficha_ingresos/new
  def new
    @ficha_ingreso = FichaIngreso.new
  end

  # GET /ficha_ingresos/1/edit
  def edit
  end

  # POST /ficha_ingresos
  # POST /ficha_ingresos.json
  def create
    @ficha_ingreso = FichaIngreso.new(ficha_ingreso_params)

    respond_to do |format|
      if @ficha_ingreso.save
        format.html { redirect_to @ficha_ingreso, notice: 'Ficha ingreso was successfully created.' }
        format.json { render :show, status: :created, location: @ficha_ingreso }
      else
        format.html { render :new }
        format.json { render json: @ficha_ingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ficha_ingresos/1
  # PATCH/PUT /ficha_ingresos/1.json
  def update
    respond_to do |format|
      if @ficha_ingreso.update(ficha_ingreso_params)
        format.html { redirect_to @ficha_ingreso, notice: 'Ficha ingreso was successfully updated.' }
        format.json { render :show, status: :ok, location: @ficha_ingreso }
      else
        format.html { render :edit }
        format.json { render json: @ficha_ingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ficha_ingresos/1
  # DELETE /ficha_ingresos/1.json
  def destroy
    @ficha_ingreso.destroy
    respond_to do |format|
      format.html { redirect_to ficha_ingresos_url, notice: 'Ficha ingreso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha_ingreso
      @ficha_ingreso = FichaIngreso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ficha_ingreso_params
      params.require(:ficha_ingreso).permit(:codigo_ficha, :fecha_ingreso, :ubicacion, :condena)
    end
end
