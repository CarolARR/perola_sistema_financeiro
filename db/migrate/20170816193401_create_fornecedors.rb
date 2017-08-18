class CreateFornecedors < ActiveRecord::Migration[5.1]
  def change
    create_table :fornecedors do |t|
      t.string :nomeFantasia
      t.string :razaoSocial
      t.string :CNPJ
      t.string :inscricaoEstadual
      t.string :ramoAtividade
      t.string :CNAE

      t.timestamps
    end
  end
end
