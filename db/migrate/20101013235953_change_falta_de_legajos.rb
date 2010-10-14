class ChangeFaltaDeLegajos < ActiveRecord::Migration
  def self.up
    add_column :falta_de_legajos, :dias_afectados, :integer, :default => 1
    add_column :falta_de_legajos, :reposo, :boolean
    add_column :falta_de_legajos, :suspendido, :boolean
    add_column :falta_de_legajos, :pescado, :boolean
    add_column :falta_de_legajos, :tipo, :string
    remove_column :falta_de_legajos, :causa
  end

  def self.down
    remove_column :falta_de_legajos, :dias_afectados
    remove_column :falta_de_legajos, :reposo, :suspendido, :pescado
    remove_column :falta_de_legajos, :tipo
    add_column :falta_de_legajos, :causa, :string
  end
end
