class HomeController < ApplicationController
	respond_to :html, :json
	# GET /home
	# GET /home.json
	def index
		@departamentos = Departamento.all(:order => 'interno ASC')
		@funcionarios = Funcionario.all(:order => 'cumpleanio ASC')
		@last = Funcionario.last(:order => "updated_at desc", :limit => 1)

		@dep = Departamento.all
		@func = Funcionario.all
		
	end
end