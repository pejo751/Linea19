class Admin::LegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.search 'nombre'
		admin.order 'nombre'
	end
end
