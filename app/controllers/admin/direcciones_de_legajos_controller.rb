class Admin::DireccionesDeLegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.except :new, :show, :edit, :destroy
		admin.includes :legajo
		admin.search 'legajos.nombre'
		admin.order 'legajos.nombre'
	end
end
