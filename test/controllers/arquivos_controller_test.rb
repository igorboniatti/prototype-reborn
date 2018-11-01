require 'test_helper'

class ArquivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arquivo = arquivos(:one)
  end

  test "should get index" do
    get arquivos_url
    assert_response :success
  end

  test "should get new" do
    get new_arquivo_url
    assert_response :success
  end

  test "should create arquivo" do
    assert_difference('Arquivo.count') do
      post arquivos_url, params: { arquivo: { arq: @arquivo.arq, titulo: @arquivo.titulo } }
    end

    assert_redirected_to arquivo_url(Arquivo.last)
  end

  test "should show arquivo" do
    get arquivo_url(@arquivo)
    assert_response :success
  end

  test "should get edit" do
    get edit_arquivo_url(@arquivo)
    assert_response :success
  end

  test "should update arquivo" do
    patch arquivo_url(@arquivo), params: { arquivo: { arq: @arquivo.arq, titulo: @arquivo.titulo } }
    assert_redirected_to arquivo_url(@arquivo)
  end

  test "should destroy arquivo" do
    assert_difference('Arquivo.count', -1) do
      delete arquivo_url(@arquivo)
    end

    assert_redirected_to arquivos_url
  end
end
