class ChangeLegajoDeLegajos < ActiveRecord::Migration
  def self.up
    change_table :legajos do |t|
      t.rename :legajo, :nro_legajo
    end
  end

  def self.down
      t.rename :nro_legajo, :legajo
  end
end
