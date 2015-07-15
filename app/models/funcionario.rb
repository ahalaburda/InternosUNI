class Funcionario < ActiveRecord::Base
	attr_accessible :apellido, :cargo, :correo, :cumpleanio, :departamento_id, :nombre
	belongs_to :departamento, :touch => true
	validates_presence_of :nombre, :allow_blank => true, :message => "No puede estar en blanco"
	validates_presence_of :apellido, :allow_blank => true, :message => "No puede estar en blanco"
	validates_presence_of :departamento_id, :allow_blank => true, :message => "No puede estar en blanco"

	# Validaciones
	VALID_EMAIL_REGEX = /\A[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})\z/

	validates :correo,
		:format => {
			:with => VALID_EMAIL_REGEX,
			message: "El formato del correo es invalido" 
		}

	def self.search(value)
		Funcionario.joins(:departamento).select('funcionarios.nombre,funcionarios.apellido,departamentos.nombre as departamento,departamentos.interno').where("funcionarios.nombre like ? OR funcionarios.apellido LIKE ? OR departamentos.nombre LIKE ? OR departamentos.interno LIKE ?", "%#{value}%", "%#{value}%", "%#{value}%", "%#{value}%")
	end
	def name_with_initial
		"#{nombre}"
	end
end