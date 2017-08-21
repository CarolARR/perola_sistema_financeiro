require 'test_helper'

class TipoDeContaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_de_contum = tipo_de_conta(:one)
  end

  test "should get index" do
    get tipo_de_conta_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_de_contum_url
    assert_response :success
  end

  test "should create tipo_de_contum" do
    assert_difference('TipoDeContum.count') do
      post tipo_de_conta_url, params: { tipo_de_contum: { tipoDeConta: @tipo_de_contum.tipoDeConta } }
    end

    assert_redirected_to tipo_de_contum_url(TipoDeContum.last)
  end

  test "should show tipo_de_contum" do
    get tipo_de_contum_url(@tipo_de_contum)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_de_contum_url(@tipo_de_contum)
    assert_response :success
  end

  test "should update tipo_de_contum" do
    patch tipo_de_contum_url(@tipo_de_contum), params: { tipo_de_contum: { tipoDeConta: @tipo_de_contum.tipoDeConta } }
    assert_redirected_to tipo_de_contum_url(@tipo_de_contum)
  end

  test "should destroy tipo_de_contum" do
    assert_difference('TipoDeContum.count', -1) do
      delete tipo_de_contum_url(@tipo_de_contum)
    end

    assert_redirected_to tipo_de_conta_url
  end
end
