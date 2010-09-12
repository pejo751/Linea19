class CreateFamiliarDeLegajos < ActiveRecord::Migration
  def self.up
    create_table :familiar_de_legajos do |t|
      t.belongs_to :legajo
      t.string :tipo_familiar
      t.string :nombre
      t.string :tipo_documento
      t.integer :documento
      t.integer :c_u_i_f
      t.date :nacimiento
      t.string :observaciones

      t.timestamps
    end
  end

  def self.down
    drop_table :familiar_de_legajos
  end
end
