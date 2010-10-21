class CreateFotoDeLegajos < ActiveRecord::Migration
  def self.up
    create_table :foto_de_legajos do |t|
      t.belongs_to :legajo
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :foto_de_legajos
  end
end
