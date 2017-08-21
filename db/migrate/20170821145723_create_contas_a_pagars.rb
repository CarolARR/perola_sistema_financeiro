class CreateContasAPagars < ActiveRecord::Migration[5.1]
  def change
    create_table :contas_a_pagars do |t|
      t.string :emissor
      t.datetime :dataEmissao
      t.float :valor
      t.string :descricaoConta
      t.float :valorMulta
      t.boolean :PermitePagarAposVencimento
      t.string :codigoBarras
      t.string :anexoConta

      t.timestamps
    end
  end
end
