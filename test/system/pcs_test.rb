require "application_system_test_case"

class PcsTest < ApplicationSystemTestCase
  setup do
    @pc = pcs(:one)
  end

  test "visiting the index" do
    visit pcs_url
    assert_selector "h1", text: "Pcs"
  end

  test "creating a Pc" do
    visit pcs_url
    click_on "New Pc"

    fill_in "Case", with: @pc.Case
    fill_in "Cpucooler", with: @pc.CpuCooler
    fill_in "Date", with: @pc.Date
    fill_in "Description", with: @pc.Description
    fill_in "Motherboard", with: @pc.Motherboard
    fill_in "Powersupply", with: @pc.PowerSupply
    fill_in "Price", with: @pc.Price
    fill_in "Storage", with: @pc.Storage
    click_on "Create Pc"

    assert_text "Pc was successfully created"
    click_on "Back"
  end

  test "updating a Pc" do
    visit pcs_url
    click_on "Edit", match: :first

    fill_in "Case", with: @pc.Case
    fill_in "Cpucooler", with: @pc.CpuCooler
    fill_in "Date", with: @pc.Date
    fill_in "Description", with: @pc.Description
    fill_in "Motherboard", with: @pc.Motherboard
    fill_in "Powersupply", with: @pc.PowerSupply
    fill_in "Price", with: @pc.Price
    fill_in "Storage", with: @pc.Storage
    click_on "Update Pc"

    assert_text "Pc was successfully updated"
    click_on "Back"
  end

  test "destroying a Pc" do
    visit pcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pc was successfully destroyed"
  end
end
