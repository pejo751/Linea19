class Admin::LegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.search :legajo
		admin.order 'nombre'
	end
end
