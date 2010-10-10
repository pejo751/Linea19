class Admin::LegajosCompletosController < Admin::CoreController
	administrate_me do |admin|
		admin.except :new, :show, :edit, :destroy
		admin.search 'nombre'
		admin.order 'nombre'
	end
end
