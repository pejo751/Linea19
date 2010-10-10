class Admin::FaltaDeLegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.includes :legajo
		admin.search 'legajos.nombre'
		admin.order 'fecha DESC, legajos.nombre'
		admin.filters do |f|
			f.set :ultimo_mes,
				:conditions => ['fecha BETWEEN ? AND ?',
					1.months.ago.to_date, Date.today]
			f.set :con_aviso, :conditions => {:con_aviso => true}
			f.set :sin_aviso, :conditions => {:con_aviso => false}
			f.set :justificadas, :conditions => {:justificada => true}
			f.set :injustificadas, :conditions => {:justificada => false}
		end
	end
end
