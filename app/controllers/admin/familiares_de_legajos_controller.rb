class Admin::FamiliaresDeLegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.except :new, :show, :edit, :destroy
		admin.search :nombre
		admin.order 'legajo_id, nombre'
	end
end
