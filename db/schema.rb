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

ActiveRecord::Schema.define(version: 20170202192959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beacons", force: :cascade do |t|
    t.string   "uuid"
    t.string   "latitud"
    t.string   "longitud"
    t.integer  "function_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "nombre"
    t.string   "nombre_largo"
    t.index ["function_id"], name: "index_beacons_on_function_id", using: :btree
  end

  create_table "dispositivos", force: :cascade do |t|
    t.string   "mac_address"
    t.integer  "beacon_id"
    t.datetime "ultima_conexion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["beacon_id"], name: "index_dispositivos_on_beacon_id", using: :btree
  end

  create_table "functions", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semaforos", force: :cascade do |t|
    t.integer  "estado"
    t.integer  "beacon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beacon_id"], name: "index_semaforos_on_beacon_id", using: :btree
  end

  add_foreign_key "dispositivos", "beacons"
end
