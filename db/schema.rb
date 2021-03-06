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

ActiveRecord::Schema.define(version: 20170821161150) do

  create_table "contas_a_pagars", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "emissor"
    t.datetime "dataEmissao"
    t.float "valor", limit: 24
    t.string "descricaoConta"
    t.float "valorMulta", limit: 24
    t.boolean "PermitePagarAposVencimento"
    t.string "codigoBarras"
    t.string "anexoConta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contas_a_recebers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "emissor"
    t.datetime "dataEmissao"
    t.datetime "dataPagamento"
    t.float "valor", limit: 24
    t.datetime "dataRecebimento"
    t.float "valorMulta", limit: 24
    t.float "valorTotal", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nomeFantasia"
    t.string "razaoSocial"
    t.string "CNPJ"
    t.string "inscricaoEstadual"
    t.string "ramoAtividade"
    t.string "CNAE"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_de_conta", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "tipoDeConta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nome"
    t.string "CPF"
    t.string "email"
    t.string "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
