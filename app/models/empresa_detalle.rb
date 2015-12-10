class EmpresaDetalle < ActiveRecord::Base
  belongs_to :empresa
  attr_accessible :departamento, :interno
end
