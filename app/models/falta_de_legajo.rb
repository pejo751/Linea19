class FaltaDeLegajo < ActiveRecord::Base
  belongs_to :legajo

  validates_presence_of :legajo_id, :fecha, :message => "no puede estar vacio."
  validates_uniqueness_of :fecha, :scope => :legajo_id, :message => "ya existe para el legajo."
  validates_numericality_of :dias_afectados, :message => "debe ser un numero."
  validates_inclusion_of :dias_afectados, :in => 1..31, :message => "entre 1 y 31."

  def banderas_resumidas
    r = ''
    r = r + (con_aviso ? 'Con aviso' : '')
    r = r + (justificada ? (r.empty? ? '' : ', ') + 'Justificada' : '')
    r = r + (reposo ? (r.empty? ? '' : ', ') + 'Reposo' : '')
    r = r + (suspendido ? (r.empty? ? '' : ', ') + 'Suspendido' : '')
    r = r + (pescado ? (r.empty? ? '' : ', ') + 'Pescado' : '')
  end

  def datos_de_legajo
    legajo.legajo.to_s + ' - ' + legajo.nombre
  end

end
