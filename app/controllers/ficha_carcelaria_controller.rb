class FichaCarcelariaController < ApplicationController
  before_action :set_ficha_carcelarium, only: [:show, :edit, :update, :destroy]

  # GET /ficha_carcelaria
  # GET /ficha_carcelaria.json
  def index
    @ficha_carcelaria = FichaCarcelarium.all
  end

  # GET /ficha_carcelaria/1
  # GET /ficha_carcelaria/1.json
  def show
  end

  # GET /ficha_carcelaria/new
  def new
    @ficha_carcelarium = FichaCarcelarium.new
  end

  # GET /ficha_carcelaria/1/edit
  def edit
  end

  # POST /ficha_carcelaria
  # POST /ficha_carcelaria.json
  def create
    @ficha_carcelarium = FichaCarcelarium.new(ficha_carcelarium_params)

    respond_to do |format|
      if @ficha_carcelarium.save
        format.html { redirect_to @ficha_carcelarium, notice: 'Ficha carcelarium was successfully created.' }
        format.json { render :show, status: :created, location: @ficha_carcelarium }
      else
        format.html { render :new }
        format.json { render json: @ficha_carcelarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ficha_carcelaria/1
  # PATCH/PUT /ficha_carcelaria/1.json
  def update
    respond_to do |format|
      if @ficha_carcelarium.update(ficha_carcelarium_params)
        format.html { redirect_to @ficha_carcelarium, notice: 'Ficha carcelarium was successfully updated.' }
        format.json { render :show, status: :ok, location: @ficha_carcelarium }
      else
        format.html { render :edit }
        format.json { render json: @ficha_carcelarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ficha_carcelaria/1
  # DELETE /ficha_carcelaria/1.json
  def destroy
    @ficha_carcelarium.destroy
    respond_to do |format|
      format.html { redirect_to ficha_carcelaria_url, notice: 'Ficha carcelarium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha_carcelarium
      @ficha_carcelarium = FichaCarcelarium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ficha_carcelarium_params
      params.require(:ficha_carcelarium).permit(:codigo_ficha_ingreso, :fecha_ingreso_date, :rut_reo, :reo_id, :ficha_ingreso__id)
    end
end
