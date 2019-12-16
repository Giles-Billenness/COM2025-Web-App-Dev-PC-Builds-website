require 'test_helper'

class BuildsControllerTest < ActionDispatch::IntegrationTest
  #include Devise::Test::ControllerHelpers
  include Devise::Test::IntegrationHelpers
  setup do
    @build = builds(:one)
  end

  test "should get index" do
    get builds_url
    assert_response :success
  end

  test "should get new" do
    @user=users(:one)
    sign_in(@user)
    get new_build_url
    assert_response :success
  end

  test "should create build" do
    @user=users(:one)
    sign_in(@user)
    assert_difference('Build.count') do
      post builds_url, params: { build: { title: @build.title, cpu_id: @build.cpu_id, gpu_id: @build.gpu_id, description: @build.description, ram_id: @build.ram_id, motherboard: @build.motherboard, cpu_cooler: @build.cpu_cooler, case: @build.case,  power_supply: @build.power_supply, storage: @build.storage, user_id: @build.user_id} }
    end

    assert_redirected_to build_url(Build.last)
  end

  test "should show build" do
    get build_url(@build)
    assert_response :success
  end

  test "should get edit" do
    @user=users(:one)
    sign_in(@user)
    get edit_build_url(@build)
    assert_response :success
  end

  test "should update build" do
    @user=users(:one)
    sign_in(@user)
    patch build_url(@build), params: { build: { title: @build.title } }
    assert_redirected_to build_url(@build)
  end

  test "should destroy build" do
    assert_difference('Build.count', -1) do
      delete build_url(@build)
    end

    assert_redirected_to builds_url
  end
end
