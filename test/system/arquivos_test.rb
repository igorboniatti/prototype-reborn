require "application_system_test_case"

class ArquivosTest < ApplicationSystemTestCase
  setup do
    @arquivo = arquivos(:one)
  end

  test "visiting the index" do
    visit arquivos_url
    assert_selector "h1", text: "Arquivos"
  end

  test "creating a Arquivo" do
    visit arquivos_url
    click_on "New Arquivo"

    fill_in "Arq", with: @arquivo.arq
    fill_in "Titulo", with: @arquivo.titulo
    click_on "Create Arquivo"

    assert_text "Arquivo was successfully created"
    click_on "Back"
  end

  test "updating a Arquivo" do
    visit arquivos_url
    click_on "Edit", match: :first

    fill_in "Arq", with: @arquivo.arq
    fill_in "Titulo", with: @arquivo.titulo
    click_on "Update Arquivo"

    assert_text "Arquivo was successfully updated"
    click_on "Back"
  end

  test "destroying a Arquivo" do
    visit arquivos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arquivo was successfully destroyed"
  end
end
