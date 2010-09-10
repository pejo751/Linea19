class Legajo < ActiveRecord::Base
	validates_presence_of :nombre, :tipo_documento, :documento
	validates_uniqueness_of :documento, :scope => :tipo_documento
end
