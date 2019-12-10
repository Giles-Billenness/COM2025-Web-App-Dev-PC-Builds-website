require 'test_helper'

class CpUsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cpu = cpus(:one)
  end

  test "should get index" do
    get cpus_url
    assert_response :success
  end

  test "should get new" do
    get new_cpu_url
    assert_response :success
  end

  test "should create cpu" do
    assert_difference('Cpu.count') do
      post cpus_url, params: { cpu: { AfterMarketMake: @cpu.AfterMarketMake, ChipMake: @cpu.ChipMake, ChipModel: @cpu.ChipModel, Pc_id: @cpu.Pc_id } }
    end

    assert_redirected_to cpu_url(Cpu.last)
  end

  test "should show cpu" do
    get cpu_url(@cpu)
    assert_response :success
  end

  test "should get edit" do
    get edit_cpu_url(@cpu)
    assert_response :success
  end

  test "should update cpu" do
    patch cpu_url(@cpu), params: { cpu: { AfterMarketMake: @cpu.AfterMarketMake, ChipMake: @cpu.ChipMake, ChipModel: @cpu.ChipModel, Pc_id: @cpu.Pc_id } }
    assert_redirected_to cpu_url(@cpu)
  end

  test "should destroy cpu" do
    assert_difference('Cpu.count', -1) do
      delete cpu_url(@cpu)
    end

    assert_redirected_to cpus_url
  end
end
