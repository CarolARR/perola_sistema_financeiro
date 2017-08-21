class CreateContasARecebers < ActiveRecord::Migration[5.1]
  def change
    create_table :contas_a_recebers do |t|
      t.string :emissor
      t.datetime :dataEmissao
      t.datetime :dataPagamento
      t.float :valor
      t.datetime :dataRecebimento
      t.float :valorMulta
      t.float :valorTotal

      t.timestamps
    end
  end
end
