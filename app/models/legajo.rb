class Legajo < ActiveRecord::Base
	has_many :direccion_de_legajos, :dependent => :delete_all
	has_many :documento_de_legajos, :dependent => :delete_all
	has_many :familiar_de_legajos, :dependent => :delete_all
	
	validates_presence_of :nombre, :tipo_documento, :documento
	validates_uniqueness_of :documento, :scope => :tipo_documento
end
