class HomeController < ApplicationController
	def index
		@departamentos = Departamento.all(:order => 'interno ASC')
		@funcionarios = Funcionario.all(:order => 'cumpleanio ASC')
		@last = Funcionario.last(:order => "updated_at desc", :limit => 1)
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @funcionarios }
			format.json { render json: @funcionarios }
		end
	end
end