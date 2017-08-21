json.extract! contas_a_receber, :id, :emissor, :dataEmissao, :dataPagamento, :valor, :dataRecebimento, :valorMulta, :valorTotal, :created_at, :updated_at
json.url contas_a_receber_url(contas_a_receber, format: :json)
