class Funcionario < ActiveRecord::Base
  attr_accessible :apellido, :cargo, :correo, :cumpleanio, :departamento_id, :interno, :nombre
  belongs_to :departamento, :touch => true

	def self.search(value)
	   Funcionario.joins(:departamento).where("funcionarios.nombre like ? OR funcionarios.apellido LIKE ? OR departamentos.nombre LIKE ? OR departamentos.interno LIKE ?", "%#{value}%", "%#{value}%", "%#{value}%", "%#{value}%")
	end
	# def self.search(search)
	# 	if search
	# 		search_length = search.split.length
	# 		find(:all, :conditions => [(['name LIKE ?'] * search_length).join(' AND ')] + search.split.map { |name| "%#{name}%" })
	# 	else
	# 		find(:all)
	# 	end
	# end
end