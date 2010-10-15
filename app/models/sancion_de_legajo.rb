class SancionDeLegajo < ActiveRecord::Base
  belongs_to :legajo

  validates_presence_of :legajo_id, :fecha, :tipo, :message => "no puede estar vacio."
  validates_uniqueness_of :fecha, :scope => :legajo_id, :message => "ya existe para el legajo."

  def datos_de_legajo
    legajo.legajo.to_s + ' - ' + legajo.nombre
  end

end
