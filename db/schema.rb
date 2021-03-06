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

ActiveRecord::Schema.define(version: 2018_11_05_195248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arquivos", force: :cascade do |t|
    t.string "titulo"
    t.string "arq_file_name"
    t.string "arq_content_type"
    t.integer "arq_file_size"
    t.datetime "arq_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.date "data"
    t.text "conteudo"
    t.bigint "publicacao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publicacao_id"], name: "index_comentarios_on_publicacao_id"
  end

  create_table "publicacaos", force: :cascade do |t|
    t.string "titulo"
    t.date "data"
    t.text "conteudo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comentarios", "publicacaos"
end
