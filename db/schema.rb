# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101013235953) do

  create_table "direccion_de_legajos", :force => true do |t|
    t.integer   "legajo_id"
    t.string    "tipo_direccion"
    t.string    "direccion"
    t.string    "barrio"
    t.string    "ciudad",         :default => "SAN MIGUEL DE TUCUMAN"
    t.string    "provincia",      :default => "TUCUMAN"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "documento_de_legajos", :force => true do |t|
    t.integer   "legajo_id"
    t.string    "tipo_documento"
    t.string    "descripcion"
    t.date      "vencimiento"
    t.string    "usuario_verificador"
    t.string    "url_imagen"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "falta_de_legajos", :force => true do |t|
    t.integer  "legajo_id"
    t.date     "fecha"
    t.boolean  "con_aviso"
    t.boolean  "justificada"
    t.date     "fecha_descargo"
    t.string   "descargo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dias_afectados", :default => 1
    t.boolean  "reposo"
    t.boolean  "suspendido"
    t.boolean  "pescado"
    t.string   "tipo"
  end

  create_table "familiar_de_legajos", :force => true do |t|
    t.integer   "legajo_id"
    t.string    "tipo_familiar"
    t.string    "nombre"
    t.string    "tipo_documento"
    t.integer   "documento"
    t.float     "c_u_i_f"
    t.date      "nacimiento"
    t.string    "observaciones"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "legajos", :force => true do |t|
    t.string    "nombre"
    t.string    "tipo_documento"
    t.integer   "documento"
    t.float     "c_u_i_f"
    t.string    "telefonos"
    t.date      "inicio"
    t.date      "nacimiento"
    t.string    "estado_civil"
    t.string    "nivel_estudio"
    t.string    "codigo_agrupacion"
    t.string    "observaciones"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "foto_file_name"
    t.string    "foto_content_type"
    t.integer   "foto_file_size"
    t.timestamp "foto_updated_at"
    t.integer   "legajo"
  end

  create_table "users", :force => true do |t|
    t.string    "full_name"
    t.string    "login",                              :null => false
    t.string    "email"
    t.string    "crypted_password",                   :null => false
    t.string    "password_salt",                      :null => false
    t.string    "persistence_token",                  :null => false
    t.string    "single_access_token",                :null => false
    t.string    "perishable_token",                   :null => false
    t.integer   "login_count",         :default => 0, :null => false
    t.integer   "failed_login_count",  :default => 0, :null => false
    t.timestamp "last_request_at"
    t.timestamp "current_login_at"
    t.timestamp "last_login_at"
    t.string    "current_login_ip"
    t.string    "last_login_ip"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

end
