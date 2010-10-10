class FaltaDeLegajo < ActiveRecord::Base
  belongs_to :legajo

  validates_presence_of :legajo_id, :fecha
  validates_uniqueness_of :fecha, :scope => :legajo_id

  def con_aviso_char
    con_aviso ? 'Si' : 'No'
  end

  def justificada_char
    justificada ? 'Si' : 'No'
  end

  def descargo_char
    (fecha_descargo.nil? and descargo.empty?) ? 'No' : 'Si'
  end

  def datos_de_legajo
    legajo.legajo.to_s + ' - ' + legajo.nombre
  end
end
