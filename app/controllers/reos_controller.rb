class ReosController < ApplicationController
  before_action :set_reo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, :index]

  # GET /reos
  # GET /reos.json
  def index
    @reos = Reo.all
  end

  # GET /reos/1
  # GET /reos/1.json
  def show
  end

  # GET /reos/new
  def new
    @reo = Reo.new
  end

  # GET /reos/1/edit
  def edit
  end

  # POST /reos
  # POST /reos.json
  def create
    @reo = Reo.new(reo_params)

    respond_to do |format|
      if @reo.save
        format.html { redirect_to @reo, notice: 'Reo was successfully created.' }
        format.json { render :show, status: :created, location: @reo }
      else
        format.html { render :new }
        format.json { render json: @reo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reos/1
  # PATCH/PUT /reos/1.json
  def update
    respond_to do |format|
      if @reo.update(reo_params)
        format.html { redirect_to @reo, notice: 'Reo was successfully updated.' }
        format.json { render :show, status: :ok, location: @reo }
      else
        format.html { render :edit }
        format.json { render json: @reo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reos/1
  # DELETE /reos/1.json
  def destroy
    @reo.destroy
    respond_to do |format|
      format.html { redirect_to reos_url, notice: 'Reo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reo
      @reo = Reo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reo_params
      params.require(:reo).permit(:rut, :nombre, :apellido, :direccion, :fono, :correo, :recinto_id)
    end
end
