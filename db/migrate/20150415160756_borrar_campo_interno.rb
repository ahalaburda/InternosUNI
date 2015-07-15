class BorrarCampoInterno < ActiveRecord::Migration
	remove_column :funcionarios ,:interno
end
