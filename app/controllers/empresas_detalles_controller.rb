class EmpresasDetallesController < ApplicationController
  before_filter :set_empresa_detalle, only: [:show, :edit, :update, :destroy]

  def index
    empresa = Empresa.find(params[:empresa_id])
    @empresas_detalles = empresa.empresas_detalles
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    empresa = Empresa.find(params[:empresa_id])
    @empresas_detalles = empresa.empresas_detalles.find(params[:id])
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    empresa = Empresa.find(params[:empresa_id])
    @empresa_detalle = empresa.empresas_detalles.build
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def edit
    empresa = Empresa.find(params[:empresa_id])
    @empresas_detalles = empresa.empresas_detalles.find(params[:id])
  end

  def create
    empresa = Empresa.find(params[:empresa_id])
    @empresa_detalle = empresa.empresas_detalles.create(params[:empresa])
    respond_to do |format|
      if @empresa_detalle.save
        format.html { redirect_to [@empresa_detalle.empresa, @empresa_detalle], notice: 'Empresa detalle correctamente creada.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    empresa = Empresa.find(params[:empresa_id])
    @empresa_detalle = empresa.empresas_detalles.find(params[:id])
    respond_to do |format|
      if @empresa_detalle.save
        format.html { redirect_to [@empresa_detalle.empresa, @empresa_detalle], notice: 'Empresa detalle correctamente actualizada.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    empresa = Empresa.find(params[:empresa_id])
    @empresa_detalle = empresa.empresas_detalles.find(params[:id])
    @empresa_detalle.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Empresa detalle eliminada.' }
    end
  end

  private
    def set_empresa_detalle
      @empresa_detalle = EmpresaDetalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def movimiento_de_caja_detalle_params
    #   params.require(:movimiento_de_caja_detalle).permit(:movimiento_de_caja_id, :cheque_entrante_id, :cheque_propio_id, :monto_efectivo, :monto_cheque)
    # end
    def set_empresa
      @empresa = Empresa.find(params[:empresa_id])
    end
end
