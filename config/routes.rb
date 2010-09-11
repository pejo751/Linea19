ActionController::Routing::Routes.draw do |map|

  map.namespace :admin do |admin|
    admin.resources :legajos, :has_many => :direccion_de_legajos
    admin.resources :legajos, :has_many => :documento_de_legajos
  end

  map.resource :account, :controller => "users"
  map.resources :users
  map.resource :user_session
  map.root :controller => "user_sessions", :action => "new"
end
