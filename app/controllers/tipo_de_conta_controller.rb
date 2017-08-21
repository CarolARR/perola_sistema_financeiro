class TipoDeContaController < ApplicationController
  before_action :set_tipo_de_contum, only: [:show, :edit, :update, :destroy]

  # GET /tipo_de_conta
  # GET /tipo_de_conta.json
  def index
    @tipo_de_conta = TipoDeContum.all
  end

  # GET /tipo_de_conta/1
  # GET /tipo_de_conta/1.json
  def show
  end

  # GET /tipo_de_conta/new
  def new
    @tipo_de_contum = TipoDeContum.new
  end

  # GET /tipo_de_conta/1/edit
  def edit
  end

  # POST /tipo_de_conta
  # POST /tipo_de_conta.json
  def create
    @tipo_de_contum = TipoDeContum.new(tipo_de_contum_params)

    respond_to do |format|
      if @tipo_de_contum.save
        format.html { redirect_to @tipo_de_contum, notice: 'Tipo de contum was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_de_contum }
      else
        format.html { render :new }
        format.json { render json: @tipo_de_contum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_de_conta/1
  # PATCH/PUT /tipo_de_conta/1.json
  def update
    respond_to do |format|
      if @tipo_de_contum.update(tipo_de_contum_params)
        format.html { redirect_to @tipo_de_contum, notice: 'Tipo de contum was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_de_contum }
      else
        format.html { render :edit }
        format.json { render json: @tipo_de_contum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_conta/1
  # DELETE /tipo_de_conta/1.json
  def destroy
    @tipo_de_contum.destroy
    respond_to do |format|
      format.html { redirect_to tipo_de_conta_url, notice: 'Tipo de contum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_contum
      @tipo_de_contum = TipoDeContum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_de_contum_params
      params.require(:tipo_de_contum).permit(:tipoDeConta)
    end
end
