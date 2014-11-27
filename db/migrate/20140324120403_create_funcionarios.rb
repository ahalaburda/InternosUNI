class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :cargo
      t.integer :departamento_id
      t.integer :interno
      t.string :correo
      t.date :cumpleanio

      t.timestamps
    end
  end
end
