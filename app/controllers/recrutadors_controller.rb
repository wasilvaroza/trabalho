class RecrutadorsController < ApplicationController
  before_action :set_recrutador, only: [:show, :edit, :update, :destroy]

  # GET /recrutadors
  # GET /recrutadors.json
  def index
    @recrutadors = Recrutador.all
  end

  # GET /recrutadors/1
  # GET /recrutadors/1.json
  def show
  end

  # GET /recrutadors/new
  def new
    @recrutador = Recrutador.new
  end

  # GET /recrutadors/1/edit
  def edit
  end

  # POST /recrutadors
  # POST /recrutadors.json
  def create
    @recrutador = Recrutador.new(recrutador_params)

    respond_to do |format|
      if @recrutador.save
        format.html { redirect_to @recrutador, notice: 'Recrutador was successfully created.' }
        format.json { render :show, status: :created, location: @recrutador }
      else
        format.html { render :new }
        format.json { render json: @recrutador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recrutadors/1
  # PATCH/PUT /recrutadors/1.json
  def update
    respond_to do |format|
      if @recrutador.update(recrutador_params)
        format.html { redirect_to @recrutador, notice: 'Recrutador was successfully updated.' }
        format.json { render :show, status: :ok, location: @recrutador }
      else
        format.html { render :edit }
        format.json { render json: @recrutador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recrutadors/1
  # DELETE /recrutadors/1.json
  def destroy
    @recrutador.destroy
    respond_to do |format|
      format.html { redirect_to recrutadors_url, notice: 'Recrutador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recrutador
      @recrutador = Recrutador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recrutador_params
      params.require(:recrutador).permit(:Id_Recrutador, :Id_Pessoa, :empresa)
    end
end
