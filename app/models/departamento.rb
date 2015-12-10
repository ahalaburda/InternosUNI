class Departamento < ActiveRecord::Base
	attr_accessible :interno, :nombre
	has_many :funcionario
	
	validates_presence_of :nombre, :allow_blank => true, :message => "No puede estar en blanco"
	validates :interno,
		:format => {
		with: /\A[0-9]+\z/,
		message: 'solo permite numeros'},

	:length => {
			:maximum => 3,
			:too_long => 'debe tener como maximo %{count} caracteres'}



	def self.search(value)
		Departamento.where("nombre LIKE ? OR interno LIKE ?", "%#{value}%", "%#{value}%")
	end

	def name_with_initial
		"#{interno} - #{nombre}"
	end
end
