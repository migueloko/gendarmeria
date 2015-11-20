# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151120232100) do

  create_table "beneficios", force: :cascade do |t|
    t.string   "codigo"
    t.text     "merito_a"
    t.date     "desde"
    t.date     "hasta"
    t.integer  "reo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "beneficios", ["reo_id"], name: "index_beneficios_on_reo_id"

  create_table "ficha_carcelaria", force: :cascade do |t|
    t.string   "codigo_ficha_ingreso"
    t.string   "fecha_ingreso_date"
    t.string   "rut_reo"
    t.integer  "reo_id"
    t.integer  "ficha_ingreso__id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "ficha_carcelaria", ["ficha_ingreso__id"], name: "index_ficha_carcelaria_on_ficha_ingreso__id"
  add_index "ficha_carcelaria", ["reo_id"], name: "index_ficha_carcelaria_on_reo_id"

  create_table "ficha_ingresos", force: :cascade do |t|
    t.string   "codigo_ficha"
    t.date     "fecha_ingreso"
    t.string   "ubicacion"
    t.string   "condena"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "recintos", force: :cascade do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.string   "ubicacion"
    t.integer  "cantidad_reo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reos", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "direccion"
    t.integer  "fono"
    t.string   "correo"
    t.integer  "recinto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reos", ["recinto_id"], name: "index_reos_on_recinto_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "correo"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
