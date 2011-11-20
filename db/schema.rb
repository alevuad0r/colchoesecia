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

ActiveRecord::Schema.define(:version => 20111119142618) do

  create_table "clientes", :force => true do |t|
    t.string   "nome",       :limit => 80
    t.string   "cpf",        :limit => 11
    t.string   "identidade", :limit => 12
    t.string   "email",      :limit => 120
    t.string   "telefone",   :limit => 14
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orcamentos", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.date     "data"
    t.float    "valor_total"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orcamentos_produtos", :id => false, :force => true do |t|
    t.integer "orcamento_id"
    t.integer "produto_id"
  end

  create_table "produtos", :force => true do |t|
    t.string   "cod_produto"
    t.string   "nome"
    t.string   "tamanho"
    t.float    "preco"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuario_sessions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nome",                              :null => false
    t.string   "senha",                             :null => false
    t.string   "telefone"
    t.string   "email",                             :null => false
    t.string   "login",                             :null => false
    t.string   "persistence_token",                 :null => false
    t.string   "crypted_password",                  :null => false
    t.string   "password_salt",                     :null => false
    t.integer  "login_count",        :default => 0, :null => false
    t.integer  "failed_login_count", :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendas", :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "usuario_id"
    t.string   "produtos"
    t.float    "valor_da_venda"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendas_produtos", :id => false, :force => true do |t|
    t.integer "venda_id"
    t.integer "produto_id"
  end

end
