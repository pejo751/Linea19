class RenameCodigoAgrupacionDeLegajos < ActiveRecord::Migration
  def self.up
    rename_column :legajos, :codigo_agrupacion, :categoria
  end

  def self.down
    rename_column :legajos, :categoria, :codigo_agrupacion
  end
end
