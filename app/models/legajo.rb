class Legajo < ActiveRecord::Base

	has_many :direccion_de_legajos, :dependent => :delete_all
	has_many :documento_de_legajos, :dependent => :delete_all
	has_many :familiar_de_legajos, :dependent => :delete_all
	has_many :falta_de_legajos, :dependent => :delete_all
	has_many :foto_de_legajos, :dependent => :delete_all
	
	validates_presence_of :nombre, :legajo, :tipo_documento, :documento, :message => "no puede estar vacio."
	validates_uniqueness_of :legajo, :message => "ya existe."
	validates_uniqueness_of :documento, :scope => :tipo_documento, :message => "ya existe para el tipo de documento."
	
	validates_numericality_of :legajo, :documento, :c_u_i_f, :message => "debe ser un numero."
	
	def self.to_select
		all(:order => 'nombre').collect{|x| [x.nombre, x.id]}
	end

end
