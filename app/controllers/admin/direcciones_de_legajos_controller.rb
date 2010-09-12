class Admin::DireccionesDeLegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.except :new, :show, :edit, :destroy
		admin.search :direccion
		admin.order 'legajo_id, direccion'
	end
end
