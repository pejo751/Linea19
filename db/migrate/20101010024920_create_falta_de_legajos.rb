class CreateFaltaDeLegajos < ActiveRecord::Migration
  def self.up
    create_table :falta_de_legajos do |t|
      t.belongs_to :legajo
      t.date :fecha
      t.string :causa
      t.boolean :con_aviso
      t.boolean :justificada
      t.date :fecha_descargo
      t.string :descargo

      t.timestamps
    end
  end

  def self.down
    drop_table :falta_de_legajos
  end
end
