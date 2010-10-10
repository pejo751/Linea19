class Admin::LegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.search 'nro_legajo'
		admin.order 'nombre'
	end
end
