class Admin::CoreController < ApplicationController
  before_filter :require_user

  def owner
    'Forum Development Group'
  end

  def app_name
    'Sistema de Recursos Humanos'
  end

  set_module :legajos
  set_module :legajos_completos
  set_module :direcciones_de_legajos
  set_module :documentos_de_legajos
  set_module :familiares_de_legajos
  set_module :falta_de_legajos, :caption => 'Inasistencias'
  set_module :sancion_de_legajos

end

