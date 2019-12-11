require 'test_helper'

class CentralProcessingUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @central_processing_unit = central_processing_units(:one)
  end

  test "should get index" do
    get central_processing_units_url
    assert_response :success
  end

  test "should get new" do
    get new_central_processing_unit_url
    assert_response :success
  end

  test "should create central_processing_unit" do
    assert_difference('CentralProcessingUnit.count') do
      post central_processing_units_url, params: { central_processing_unit: { ChipMake: @central_processing_unit.ChipMake, ChipModel: @central_processing_unit.ChipModel } }
    end

    assert_redirected_to central_processing_unit_url(CentralProcessingUnit.last)
  end

  test "should show central_processing_unit" do
    get central_processing_unit_url(@central_processing_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_central_processing_unit_url(@central_processing_unit)
    assert_response :success
  end

  test "should update central_processing_unit" do
    patch central_processing_unit_url(@central_processing_unit), params: { central_processing_unit: { ChipMake: @central_processing_unit.ChipMake, ChipModel: @central_processing_unit.ChipModel } }
    assert_redirected_to central_processing_unit_url(@central_processing_unit)
  end

  test "should destroy central_processing_unit" do
    assert_difference('CentralProcessingUnit.count', -1) do
      delete central_processing_unit_url(@central_processing_unit)
    end

    assert_redirected_to central_processing_units_url
  end
end
