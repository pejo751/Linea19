class Admin::DocumentosDeLegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.except :new, :show, :edit, :destroy
		admin.search :descripcion
		admin.order 'legajo_id, descripcion'
	end
end
