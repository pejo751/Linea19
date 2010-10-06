class Admin::DocumentosDeLegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.except :new, :show, :edit, :destroy
		admin.includes :legajo
		admin.search 'legajos.legajo'
		#admin.search :descripcion
		#admin.order 'legajo_id, descripcion'
		admin.order 'legajos.nombre'
		admin.filters do |f|
			f.set :vencidos, :conditions => ['vencimiento < ?', Date.today]
			f.set :vigentes, :conditions => ['vencimiento >= ?', Date.today]
			f.set :falta_vencimiento, :conditions => ['vencimiento IS NULL']
		end
	end
end
