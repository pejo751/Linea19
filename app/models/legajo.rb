class Legajo < ActiveRecord::Base
	has_many :direccion_de_legajos, :dependent => :delete_all
	has_many :documento_de_legajos, :dependent => :delete_all
	has_many :familiar_de_legajos, :dependent => :delete_all
	has_many :falta_de_legajos, :dependent => :delete_all
	
	validates_presence_of :nombre, :legajo, :tipo_documento, :documento
	validates_uniqueness_of :legajo
	validates_uniqueness_of :documento, :scope => :tipo_documento
	
	validates_numericality_of :legajo, :documento, :c_u_i_f
	
	has_attached_file :foto, :styles => { :small => "150x150>" },
		:default_url => ":rails_root/public/images/rails.png",
		:url  => "/assets/legajos/:basename.:extension",
		:path => ":rails_root/public/assets/legajos/:basename.:extension"

	# validates_attachment_presence :foto
	validates_attachment_size :foto, :less_than => 5.megabytes
	validates_attachment_content_type :foto, :content_type => ['image/jpeg', 'image/png']

	def self.to_select
		all(:order => 'nombre').collect{|x| [x.nombre, x.id]}
	end
end
