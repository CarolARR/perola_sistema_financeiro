json.extract! contas_a_pagar, :id, :emissor, :dataEmissao, :valor, :descricaoConta, :valorMulta, :PermitePagarAposVencimento, :codigoBarras, :anexoConta, :created_at, :updated_at
json.url contas_a_pagar_url(contas_a_pagar, format: :json)
