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

ActiveRecord::Schema.define(version: 2019_05_25_131301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acc_types", force: :cascade do |t|
    t.string "nome", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cargos", force: :cascade do |t|
    t.string "nome", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresa_portfolios", force: :cascade do |t|
    t.integer "cluster", null: false
    t.string "nome", default: "", null: false
    t.string "telefone", default: "", null: false
    t.string "email", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "possui_id"
    t.index ["possui_id"], name: "index_empresa_portfolios_on_possui_id"
  end

  create_table "meta", force: :cascade do |t|
    t.string "interna", default: "", null: false
    t.string "fejesc", default: "", null: false
    t.string "situacao", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nota_orcamentos", force: :cascade do |t|
    t.string "valor", default: "0", null: false
    t.string "tipo", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "produto_id"
    t.index ["produto_id"], name: "index_nota_orcamentos_on_produto_id"
  end

  create_table "orcamentos", force: :cascade do |t|
    t.integer "valor", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "nota_orcamento_id"
    t.index ["nota_orcamento_id"], name: "index_orcamentos_on_nota_orcamento_id"
  end

  create_table "possuis", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "produto_id"
    t.index ["produto_id"], name: "index_possuis_on_produto_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.integer "valor", default: 0, null: false
    t.integer "quantidade", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nome", default: "", null: false
    t.string "sobrenome", default: "", null: false
    t.string "email", default: "", null: false
    t.string "password_digest", default: "", null: false
    t.string "tipo", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cargo_id"
    t.bigint "acc_type_id"
    t.bigint "empresa_portfolio_id"
    t.index ["acc_type_id"], name: "index_users_on_acc_type_id"
    t.index ["cargo_id"], name: "index_users_on_cargo_id"
    t.index ["empresa_portfolio_id"], name: "index_users_on_empresa_portfolio_id"
  end

  add_foreign_key "empresa_portfolios", "possuis"
  add_foreign_key "nota_orcamentos", "produtos"
  add_foreign_key "orcamentos", "nota_orcamentos"
  add_foreign_key "possuis", "produtos"
  add_foreign_key "users", "acc_types"
  add_foreign_key "users", "cargos"
  add_foreign_key "users", "empresa_portfolios"
end
