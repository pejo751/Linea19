class Admin::LegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.search 'legajos.legajo'
		admin.order 'nombre'
	end
end
