require "application_system_test_case"

class CentralProcessingUnitsTest < ApplicationSystemTestCase
  setup do
    @central_processing_unit = central_processing_units(:one)
  end

  test "visiting the index" do
    visit central_processing_units_url
    assert_selector "h1", text: "Central Processing Units"
  end

  test "creating a Central processing unit" do
    visit central_processing_units_url
    click_on "New Central Processing Unit"

    fill_in "Chipmake", with: @central_processing_unit.ChipMake
    fill_in "Chipmodel", with: @central_processing_unit.ChipModel
    click_on "Create Central processing unit"

    assert_text "Central processing unit was successfully created"
    click_on "Back"
  end

  test "updating a Central processing unit" do
    visit central_processing_units_url
    click_on "Edit", match: :first

    fill_in "Chipmake", with: @central_processing_unit.ChipMake
    fill_in "Chipmodel", with: @central_processing_unit.ChipModel
    click_on "Update Central processing unit"

    assert_text "Central processing unit was successfully updated"
    click_on "Back"
  end

  test "destroying a Central processing unit" do
    visit central_processing_units_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Central processing unit was successfully destroyed"
  end
end
