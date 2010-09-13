class Legajo < ActiveRecord::Base
	has_many :direccion_de_legajos, :dependent => :delete_all
	has_many :documento_de_legajos, :dependent => :delete_all
	has_many :familiar_de_legajos, :dependent => :delete_all
	
	validates_presence_of :nombre, :tipo_documento, :documento
	validates_uniqueness_of :documento, :scope => :tipo_documento
	
	validates_numericality_of :documento, :c_u_i_f
	
#	before_save :set_fechas
	
#	private
#		def set_fechas
#			d = parse(self.inicio)
#			self.inicio = utc_time(d.day, d.month, d.year)
#		end
end
