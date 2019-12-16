require 'test_helper'

class GraphicsProcessingUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graphics_processing_unit = graphics_processing_units(:one)
  end

  test "should get index" do
    get graphics_processing_units_url
    assert_response :success
  end

  test "should get new" do
    get new_graphics_processing_unit_url
    assert_response :success
  end

  test "should create graphics_processing_unit" do
    assert_difference('GraphicsProcessingUnit.count') do
      post graphics_processing_units_url, params: { graphics_processing_unit: { aftermarketmake: @graphics_processing_unit.
        aftermarketmake, chipmake: @graphics_processing_unit.chipmake, chipmodel: @graphics_processing_unit.chipmodel } }
    end

    assert_redirected_to graphics_processing_unit_url(GraphicsProcessingUnit.last)
  end

  test "should show graphics_processing_unit" do
    get graphics_processing_unit_url(@graphics_processing_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_graphics_processing_unit_url(@graphics_processing_unit)
    assert_response :success
  end

  test "should update graphics_processing_unit" do
    patch graphics_processing_unit_url(@graphics_processing_unit), params: { graphics_processing_unit: { aftermarketmake: @graphics_processing_unit.aftermarketmake, chipmake: @graphics_processing_unit.chipmake, chipmodel: @graphics_processing_unit.chipmodel } }
    assert_redirected_to graphics_processing_unit_url(@graphics_processing_unit)
  end

  test "should destroy graphics_processing_unit" do
    assert_difference('GraphicsProcessingUnit.count', -1) do
      delete graphics_processing_unit_url(@graphics_processing_unit)
    end

    assert_redirected_to graphics_processing_units_url
  end
end
