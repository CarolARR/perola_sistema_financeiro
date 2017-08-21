require 'test_helper'

class ContasARecebersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contas_a_receber = contas_a_recebers(:one)
  end

  test "should get index" do
    get contas_a_recebers_url
    assert_response :success
  end

  test "should get new" do
    get new_contas_a_receber_url
    assert_response :success
  end

  test "should create contas_a_receber" do
    assert_difference('ContasAReceber.count') do
      post contas_a_recebers_url, params: { contas_a_receber: { dataEmissao: @contas_a_receber.dataEmissao, dataPagamento: @contas_a_receber.dataPagamento, dataRecebimento: @contas_a_receber.dataRecebimento, emissor: @contas_a_receber.emissor, valor: @contas_a_receber.valor, valorMulta: @contas_a_receber.valorMulta, valorTotal: @contas_a_receber.valorTotal } }
    end

    assert_redirected_to contas_a_receber_url(ContasAReceber.last)
  end

  test "should show contas_a_receber" do
    get contas_a_receber_url(@contas_a_receber)
    assert_response :success
  end

  test "should get edit" do
    get edit_contas_a_receber_url(@contas_a_receber)
    assert_response :success
  end

  test "should update contas_a_receber" do
    patch contas_a_receber_url(@contas_a_receber), params: { contas_a_receber: { dataEmissao: @contas_a_receber.dataEmissao, dataPagamento: @contas_a_receber.dataPagamento, dataRecebimento: @contas_a_receber.dataRecebimento, emissor: @contas_a_receber.emissor, valor: @contas_a_receber.valor, valorMulta: @contas_a_receber.valorMulta, valorTotal: @contas_a_receber.valorTotal } }
    assert_redirected_to contas_a_receber_url(@contas_a_receber)
  end

  test "should destroy contas_a_receber" do
    assert_difference('ContasAReceber.count', -1) do
      delete contas_a_receber_url(@contas_a_receber)
    end

    assert_redirected_to contas_a_recebers_url
  end
end
