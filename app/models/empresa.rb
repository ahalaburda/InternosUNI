class Empresa < ActiveRecord::Base
  attr_accessible :direccion, :nombre, :sucursal, :telefono
end
