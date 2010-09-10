class Admin::CoreController < ApplicationController
  before_filter :require_user

  def owner
    'Forum Development Group'
  end

  def app_name
    'Gestion de transporte publico v2.0'
  end

  set_module :legajos

end

