# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_01_033150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rurals", force: :cascade do |t|
    t.string "id_catastral"
    t.string "provincia"
    t.string "distrito"
    t.string "corregimiento"
    t.string "ejido"
    t.string "lugar"
    t.string "calle"
    t.string "localizacion"
    t.string "geo_point"
    t.string "n_mapa_catastral"
    t.string "n_ortofoto"
    t.string "n_predio"
    t.string "s_predial"
    t.string "nombre_predio"
    t.string "titulo_propiedad"
    t.string "ph"
    t.string "finca_ph"
    t.string "concesion_admin"
    t.string "litigio"
    t.string "tipo_de_litigio"
    t.string "finca"
    t.string "folio"
    t.string "docum"
    t.string "operacion"
    t.string "tomo"
    t.string "rollo"
    t.string "registro"
    t.string "asiento"
    t.date "fecha_del_titulo"
    t.date "fecha_de_registro"
    t.string "superficie_inscrita"
    t.string "finca_madre"
    t.string "otorgado"
    t.string "tipo_de_titulo"
    t.string "n_resolucion"
    t.date "fecha_resolucion"
    t.string "tipo_resolucion"
    t.string "n_de_orden"
    t.string "n_plano"
    t.string "globo"
    t.string "plano_de_referencia"
    t.string "sup_reportada"
    t.string "tipo_de_persona"
    t.string "sexo"
    t.string "cedula"
    t.integer "n_dependientes"
    t.string "nacionalidad"
    t.string "ocupacion"
    t.string "primer_nombre"
    t.string "segundo_nombre"
    t.string "primer_apellido"
    t.string "segundo_apellido"
    t.string "nombre_casada"
    t.string "nombre_usual"
    t.string "apellido_usual"
    t.string "organizacion"
    t.date "fecha_de_nacimiento"
    t.string "telefono"
    t.string "dirreccion"
    t.string "estado_civil"
    t.date "fecha_de_ocupacion"
    t.string "apartado"
    t.string "topografia"
    t.string "pendiente_ap"
    t.boolean "agua"
    t.boolean "luz"
    t.boolean "x_none"
    t.string "tipo_de_construccion"
    t.string "del_propietario"
    t.string "de_otro"
    t.string "uso_de_tierra"
    t.string "cercas_existentes"
    t.string "hidrografia"
    t.string "vias_de_acceso"
    t.string "servidumbre_de_acceso"
    t.string "servidumbre"
    t.text "observaciones_ficha"
    t.string "empadronador_nombre"
    t.string "empadronador_firma"
    t.string "inspector_nombre"
    t.string "inspector_firma"
    t.string "supervisor_nombre"
    t.string "supervisor_firma"
    t.string "captador_nombre"
    t.string "captador_firma"
    t.string "empresa"
    t.string "metodologia"
    t.date "fecha_levantamiento"
    t.string "hora_levantamiento"
    t.string "equipo"
    t.string "verficado"
    t.string "firma_propietario"
    t.string "cedula_propetario"
    t.string "funcionario_firma"
    t.string "sustanciador_firma"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.index ["user_id"], name: "index_rurals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "otp_secret_key"
    t.integer "otp_module"
    t.string "name"
    t.string "last_name"
    t.string "role"
    t.string "id_n"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "rurals", "users"
end
