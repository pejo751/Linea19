class Admin::DocumentoDeLegajosController < Admin::CoreController
	administrate_me do |admin|
		admin.belongs_to :legajo, :context => :nombre
		admin.order 'created_at DESC'
	end
end
