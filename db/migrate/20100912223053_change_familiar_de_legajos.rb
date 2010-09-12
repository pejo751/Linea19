class ChangeFamiliarDeLegajos < ActiveRecord::Migration
  def self.up
    change_table :familiar_de_legajos do |t|
      t.change :c_u_i_f, :float
    end
  end

  def self.down
    change_table :familiar_de_legajos do |t|
      t.change :c_u_i_f, :float
    end
  end
end
