class CreateSancionDeLegajos < ActiveRecord::Migration
  def self.up
    create_table :sancion_de_legajos do |t|
      t.belongs_to :legajo
      t.date :fecha
      t.string :tipo
      t.string :detalle
      t.date :fecha_descargo
      t.string :descargo

      t.timestamps
    end
  end

  def self.down
    drop_table :sancion_de_legajos
  end
end
