require "application_system_test_case"

class PublicacaosTest < ApplicationSystemTestCase
  setup do
    @publicacao = publicacaos(:one)
  end

  test "visiting the index" do
    visit publicacaos_url
    assert_selector "h1", text: "Publicacaos"
  end

  test "creating a Publicacao" do
    visit publicacaos_url
    click_on "New Publicacao"

    fill_in "Conteudo", with: @publicacao.conteudo
    fill_in "Data", with: @publicacao.data
    fill_in "Titulo", with: @publicacao.titulo
    click_on "Create Publicacao"

    assert_text "Publicacao was successfully created"
    click_on "Back"
  end

  test "updating a Publicacao" do
    visit publicacaos_url
    click_on "Edit", match: :first

    fill_in "Conteudo", with: @publicacao.conteudo
    fill_in "Data", with: @publicacao.data
    fill_in "Titulo", with: @publicacao.titulo
    click_on "Update Publicacao"

    assert_text "Publicacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Publicacao" do
    visit publicacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Publicacao was successfully destroyed"
  end
end
