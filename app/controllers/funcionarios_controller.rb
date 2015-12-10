class FuncionariosController < ApplicationController
  before_filter :authenticate_usuario!, except: [ :index, :show ]
  # GET /funcionarios
  # GET /funcionarios.json
  def index
    @funcionario = Funcionario.new
    @funcionariosAll = Funcionario.all(:order => 'nombre ASC')
    @funcionarios = Funcionario.search(params[:value])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @funcionarios }
    end
  end

  # GET /funcionarios/1
  # GET /funcionarios/1.json
  def show
    @funcionario = Funcionario.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @funcionario }
    end
  end
  # GET /funcionarios/new
  # GET /funcionarios/new.json
  def new
    @funcionario = Funcionario.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @funcionario }
    end
  end
  # GET /funcionarios/1/edit
  def edit
    @funcionario = Funcionario.find(params[:id])
    respond_to do |format|
      format.js
    end
  end
  # POST /funcionarios
  # POST /funcionarios.json
  def create
    @funcionario = Funcionario.new(params[:funcionario])
    respond_to do |format|
      if @funcionario.save
        format.html { redirect_to funcionarios_url, success: 'Funcionario creado correctamente.' }
        format.json { render json: @funcionario, status: :created, location: @funcionario }
      else
        format.html { render action: "new" }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end
  # PUT /funcionarios/1
  # PUT /funcionarios/1.json
  def update
    @funcionario = Funcionario.find(params[:id])
    respond_to do |format|
      if @funcionario.update_attributes(params[:funcionario])
        format.html { redirect_to funcionarios_url, notice: 'Los datos del funcionario se actualizaron correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /funcionarios/1
  # DELETE /funcionarios/1.json
  def destroy
    @funcionario = Funcionario.find(params[:id])
    @funcionario.destroy
    respond_to do |format|
      format.html { redirect_to funcionarios_url, alert: 'Funcionario eliminado' }
      format.json { head :no_content }
    end
  end
end