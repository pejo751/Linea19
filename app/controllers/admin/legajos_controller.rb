class Admin::LegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.search :nombre
		admin.order 'created_at DESC'
	end
end
