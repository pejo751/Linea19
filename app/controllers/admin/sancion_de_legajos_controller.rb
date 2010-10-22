class Admin::SancionDeLegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.includes :legajo
		admin.search 'legajos.nombre'
		admin.order 'fecha DESC, legajos.nombre'
		admin.filters do |f|
			f.set :ultimo_mes,
				:conditions => ['fecha BETWEEN ? AND ?',
					1.months.ago.to_date, Date.today]
			f.set :con_descargo,
				:conditions => ['fecha_descargo IS NOT NULL']
		end
	end
end
