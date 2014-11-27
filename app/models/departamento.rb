class Departamento < ActiveRecord::Base
  attr_accessible :interno, :nombre
  has_many :funcionario

   def self.search(value)
		Departamento.where("nombre LIKE ? OR interno LIKE ?", "%#{value}%", "%#{value}%")
		# Departamento.joins(:funcionario).where("departamentos.nombre like ? OR departamentos.interno like ? OR funcionarios.nombre like ? OR funcionarios.apellido like ?","%#{value}%", "%#{value}%", "%#{value}%", "%#{value}%")

	end
end
