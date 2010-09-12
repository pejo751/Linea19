class ChangeLegajos < ActiveRecord::Migration
  def self.up
    change_table :legajos do |t|
      t.change :c_u_i_f, :float
    end
  end

  def self.down
    change_table :legajos do |t|
      t.change :c_u_i_f, :integer
    end
  end
end
