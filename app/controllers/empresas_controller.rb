class EmpresasController < ApplicationController
  before_filter :set_empresa, only: [:show, :edit, :update, :destroy]

  def index
    @empresa = Empresa.new
    @empresas = Empresa.all
    @empresa.empresas_detalles.build
    @empresa_detalle = EmpresaDetalle.new
  end

  def show
    @empresa_detalle = EmpresaDetalle.new
    @empresas_detalles = EmpresaDetalle.all
  end

  def new
    @empresa = Empresa.new
  end

  def edit
  end

  def create
    @empresa = Empresa.new(params[:empresa])
    respond_to do |format|
        if @empresa.save
          format.html { redirect_to :back, notice: 'Empresa creada.' }
        else
          format.html { render :new }
        end
      end
  end

  def update
    @empresa = Empresa.find(params[:id])
    respond_to do |format|
      if @empresa.update_attributes(params[:empresa])
        format.html { redirect_to empresas_url, notice: 'La empresa se ha actualizado correctamente.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @empresa = Empresa.find(params[:id])
    @empresa.destroy
    respond_to do |format|
      format.html { redirect_to departamentos_url, alert: 'Empresa eliminada.' }
    end
  end

  private
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end
end
