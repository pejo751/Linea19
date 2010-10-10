class ChangeNroLegajoDeLegajos < ActiveRecord::Migration
  def self.up
    change_table :legajos do |t|
      t.rename :nro_legajo, :legajo
    end
  end

  def self.down
    change_table :legajos do |t|
      t.rename :legajo, :nro_legajo
    end
  end
end
