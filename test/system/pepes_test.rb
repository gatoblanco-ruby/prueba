require "application_system_test_case"

class PepesTest < ApplicationSystemTestCase
  setup do
    @pepe = pepes(:one)
  end

  test "visiting the index" do
    visit pepes_url
    assert_selector "h1", text: "Pepes"
  end

  test "creating a Pepe" do
    visit pepes_url
    click_on "New Pepe"

    fill_in "Edad", with: @pepe.edad
    fill_in "Nombre", with: @pepe.nombre
    click_on "Create Pepe"

    assert_text "Pepe was successfully created"
    click_on "Back"
  end

  test "updating a Pepe" do
    visit pepes_url
    click_on "Edit", match: :first

    fill_in "Edad", with: @pepe.edad
    fill_in "Nombre", with: @pepe.nombre
    click_on "Update Pepe"

    assert_text "Pepe was successfully updated"
    click_on "Back"
  end

  test "destroying a Pepe" do
    visit pepes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pepe was successfully destroyed"
  end
end
