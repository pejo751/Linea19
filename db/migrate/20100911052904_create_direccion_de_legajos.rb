class CreateDireccionDeLegajos < ActiveRecord::Migration
  def self.up
    create_table :direccion_de_legajos do |t|
      t.belongs_to :legajo
      t.string :tipo_direccion
      t.string :direccion
      t.string :barrio
      t.string :ciudad, :default => 'SAN MIGUEL DE TUCUMAN'
      t.string :provincia, :default => 'TUCUMAN'

      t.timestamps
    end
  end

  def self.down
    drop_table :direccion_de_legajos
  end
end
