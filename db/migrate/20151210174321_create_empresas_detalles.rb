class CreateEmpresasDetalles < ActiveRecord::Migration
  def change
    create_table :empresas_detalles do |t|
      t.string :departamento
      t.string :interno
      t.references :empresa

      t.timestamps
    end
    add_index :empresas_detalles, :empresa_id
  end
end
