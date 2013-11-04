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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131030063634) do

  create_table "admins", :force => true do |t|
    t.string   "nombre",           :null => false
    t.string   "apellido_paterno", :null => false
    t.string   "apellido_materno", :null => false
    t.integer  "pMoral_id",        :null => false
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "domicilios", :force => true do |t|
    t.string   "calle",                       :null => false
    t.string   "num_int",                     :null => false
    t.string   "num_ext",                     :null => false
    t.integer  "codigo_postal",               :null => false
    t.string   "colonia",       :limit => 30, :null => false
    t.string   "ciudad",        :limit => 8,  :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "p_fisicas", :force => true do |t|
    t.string   "nombre",           :limit => 60, :null => false
    t.string   "apellido_paterno", :limit => 60, :null => false
    t.string   "apellido_materno", :limit => 30, :null => false
    t.string   "genero",           :limit => 1,  :null => false
    t.date     "nacimiento",                     :null => false
    t.string   "estado",                         :null => false
    t.string   "pais",                           :null => false
    t.integer  "nacionalidad",     :limit => 1,  :null => false
    t.string   "ocupacion",                      :null => false
    t.integer  "domicilio_id",                   :null => false
    t.string   "telefono",         :limit => 40, :null => false
    t.string   "mail"
    t.string   "curp",             :limit => 18
    t.string   "rfc",              :limit => 13
    t.string   "fiel"
    t.boolean  "alta",                           :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "p_morals", :force => true do |t|
    t.string   "nombre",       :limit => 125, :null => false
    t.string   "actividad",                   :null => false
    t.string   "nacionalidad",                :null => false
    t.string   "rfc",          :limit => 13,  :null => false
    t.string   "fiel"
    t.integer  "domicilio_id",                :null => false
    t.string   "telefono",     :limit => 40,  :null => false
    t.string   "mail"
    t.date     "nacimiento",                  :null => false
    t.integer  "admins_id",                   :null => false
    t.boolean  "alta",                        :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "mail",             :null => false
    t.string   "nombre",           :null => false
    t.string   "apellido_paterno", :null => false
    t.string   "apellido_materno", :null => false
    t.boolean  "activo",           :null => false
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "remember_token"
    t.string   "password_digest"
  end

end
