require "application_system_test_case"

class GraphicsProcessingUnitsTest < ApplicationSystemTestCase
  setup do
    @graphics_processing_unit = graphics_processing_units(:one)
  end

  test "visiting the index" do
    visit graphics_processing_units_url
    assert_selector "h1", text: "Graphics Processing Units"
  end

  test "creating a Graphics processing unit" do
    visit graphics_processing_units_url
    click_on "New Graphics Processing Unit"

    fill_in "Aftermarketmake", with: @graphics_processing_unit.AfterMarketMake
    fill_in "Chipmake", with: @graphics_processing_unit.ChipMake
    fill_in "Chipmodel", with: @graphics_processing_unit.ChipModel
    click_on "Create Graphics processing unit"

    assert_text "Graphics processing unit was successfully created"
    click_on "Back"
  end

  test "updating a Graphics processing unit" do
    visit graphics_processing_units_url
    click_on "Edit", match: :first

    fill_in "Aftermarketmake", with: @graphics_processing_unit.AfterMarketMake
    fill_in "Chipmake", with: @graphics_processing_unit.ChipMake
    fill_in "Chipmodel", with: @graphics_processing_unit.ChipModel
    click_on "Update Graphics processing unit"

    assert_text "Graphics processing unit was successfully updated"
    click_on "Back"
  end

  test "destroying a Graphics processing unit" do
    visit graphics_processing_units_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Graphics processing unit was successfully destroyed"
  end
end
