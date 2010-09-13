class FamiliarDeLegajo < ActiveRecord::Base
  belongs_to :legajo

  validates_presence_of :tipo_familiar, :nombre
  validates_uniqueness_of :nombre, :scope => :legajo_id

  validates_numericality_of :documento, :c_u_i_f
end
