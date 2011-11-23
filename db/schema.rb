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

ActiveRecord::Schema.define(:version => 20111120000453) do

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

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "login"
    t.string   "senha"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

  create_table "vendas", :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "usuario_id"
<<<<<<< HEAD
    t.string   "produtos"
=======
    t.integer  "produto_id"
>>>>>>> Arrumando vendas
    t.float    "valor_da_venda"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendas_produtos", :id => false, :force => true do |t|
    t.integer "venda_id"
    t.integer "produto_id"
  end

end
