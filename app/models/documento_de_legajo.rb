class DocumentoDeLegajo < ActiveRecord::Base
  belongs_to :legajo

  validates_presence_of :tipo_documento, :descripcion
  validates_uniqueness_of :tipo_documento, :scope => :legajo_id
  validates_uniqueness_of :descripcion, :scope => :legajo_id
  
  def datos_de_legajo
    legajo.legajo.to_s + ' - ' + legajo.nombre
  end
end
