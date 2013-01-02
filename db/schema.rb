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

ActiveRecord::Schema.define(:version => 20130102212804) do

  create_table "items", :force => true do |t|
    t.string   "nombre"
    t.integer  "ataque"
    t.integer  "defenza"
    t.integer  "dureza"
    t.integer  "nivel"
    t.integer  "especie"
    t.integer  "valor"
    t.string   "imagen"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locacions", :force => true do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.string   "distancia"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mision_misions", :force => true do |t|
    t.integer  "mision_id"
    t.integer  "mision_relacionada_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "misions", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "experiencia"
    t.integer  "oro"
    t.integer  "repetible"
    t.integer  "nivel_necesario"
    t.integer  "es_principal"
    t.integer  "locacion_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "personaje_items", :force => true do |t|
    t.integer  "item_id"
    t.integer  "personaje_id"
    t.integer  "equipado"
    t.integer  "danio"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "personaje_misions", :force => true do |t|
    t.string   "personaje_id"
    t.string   "mision_id"
    t.integer  "finalizada"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "personajes", :force => true do |t|
    t.integer  "usuario_id"
    t.string   "nombre"
    t.integer  "ataque"
    t.integer  "defenza"
    t.integer  "nivel"
    t.integer  "experiencia"
    t.integer  "especie"
    t.string   "familia"
    t.integer  "oro"
    t.integer  "locacion_id"
    t.integer  "vida"
    t.integer  "vida_perdida"
    t.integer  "tipo"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "registro_peleas", :force => true do |t|
    t.integer  "personaje_id"
    t.integer  "personaje_enemigo_id"
    t.integer  "ganador_id"
    t.integer  "perdedor_id"
    t.integer  "danio_ganador"
    t.integer  "danio_perdedor"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "tipo_items", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_personajes", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "imagen"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nombre"
    t.string   "mail"
    t.string   "password"
    t.integer  "nacionalidad"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
