class CreateDocumentoDeLegajos < ActiveRecord::Migration
  def self.up
    create_table :documento_de_legajos do |t|
      t.belongs_to :legajo
      t.string :tipo_documento
      t.string :descripcion
      t.date :vencimiento
      t.string :usuario_verificador
      t.string :url_imagen

      t.timestamps
    end
  end

  def self.down
    drop_table :documento_de_legajos
  end
end
