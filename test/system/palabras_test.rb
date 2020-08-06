require "application_system_test_case"

class PalabrasTest < ApplicationSystemTestCase
  setup do
    @palabra = palabras(:one)
  end

  test "visiting the index" do
    visit palabras_url
    assert_selector "h1", text: "Palabras"
  end

  test "creating a Palabra" do
    visit palabras_url
    click_on "New Palabra"

    fill_in "Clase", with: @palabra.clase
    fill_in "Partida", with: @palabra.partida_id
    fill_in "Word", with: @palabra.word
    click_on "Create Palabra"

    assert_text "Palabra was successfully created"
    click_on "Back"
  end

  test "updating a Palabra" do
    visit palabras_url
    click_on "Edit", match: :first

    fill_in "Clase", with: @palabra.clase
    fill_in "Partida", with: @palabra.partida_id
    fill_in "Word", with: @palabra.word
    click_on "Update Palabra"

    assert_text "Palabra was successfully updated"
    click_on "Back"
  end

  test "destroying a Palabra" do
    visit palabras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Palabra was successfully destroyed"
  end
end
