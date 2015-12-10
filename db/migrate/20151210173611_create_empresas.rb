class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :sucursal
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
