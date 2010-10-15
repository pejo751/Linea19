class ChangeDescargoFaltaDeLegajos < ActiveRecord::Migration
  def self.up
    remove_column :falta_de_legajos, :fecha_descargo
    remove_column :falta_de_legajos, :descargo
  end

  def self.down
    add_column :falta_de_legajos, :fecha_descargo, :date
    add_column :falta_de_legajos, :descargo, :string
  end
end
