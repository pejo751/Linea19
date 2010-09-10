class CreateLegajos < ActiveRecord::Migration
  def self.up
    create_table :legajos do |t|
      t.string :nombre
      t.string :tipo_documento
      t.integer :documento
      t.integer :c_u_i_f
      t.string :telefonos
      t.date :inicio
      t.date :nacimiento
      t.string :estado_civil
      t.string :nivel_estudio
      t.string :codigo_agrupacion
      t.string :observaciones

      t.timestamps
    end
  end

  def self.down
    drop_table :legajos
  end
end
