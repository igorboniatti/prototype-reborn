require 'test_helper'

class PublicacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publicacao = publicacaos(:one)
  end

  test "should get index" do
    get publicacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_publicacao_url
    assert_response :success
  end

  test "should create publicacao" do
    assert_difference('Publicacao.count') do
      post publicacaos_url, params: { publicacao: { conteudo: @publicacao.conteudo, data: @publicacao.data, titulo: @publicacao.titulo } }
    end

    assert_redirected_to publicacao_url(Publicacao.last)
  end

  test "should show publicacao" do
    get publicacao_url(@publicacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_publicacao_url(@publicacao)
    assert_response :success
  end

  test "should update publicacao" do
    patch publicacao_url(@publicacao), params: { publicacao: { conteudo: @publicacao.conteudo, data: @publicacao.data, titulo: @publicacao.titulo } }
    assert_redirected_to publicacao_url(@publicacao)
  end

  test "should destroy publicacao" do
    assert_difference('Publicacao.count', -1) do
      delete publicacao_url(@publicacao)
    end

    assert_redirected_to publicacaos_url
  end
end
