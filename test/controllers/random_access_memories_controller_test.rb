require 'test_helper'

class RandomAccessMemoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @random_access_memory = random_access_memories(:one)
  end

  test "should get index" do
    get random_access_memories_url
    assert_response :success
  end

  test "should get new" do
    get new_random_access_memory_url
    assert_response :success
  end

  test "should create random_access_memory" do
    assert_difference('RandomAccessMemory.count') do
      post random_access_memories_url, params: { random_access_memory: {  } }
    end

    assert_redirected_to random_access_memory_url(RandomAccessMemory.last)
  end

  test "should show random_access_memory" do
    get random_access_memory_url(@random_access_memory)
    assert_response :success
  end

  test "should get edit" do
    get edit_random_access_memory_url(@random_access_memory)
    assert_response :success
  end

  test "should update random_access_memory" do
    patch random_access_memory_url(@random_access_memory), params: { random_access_memory: {  } }
    assert_redirected_to random_access_memory_url(@random_access_memory)
  end

  test "should destroy random_access_memory" do
    assert_difference('RandomAccessMemory.count', -1) do
      delete random_access_memory_url(@random_access_memory)
    end

    assert_redirected_to random_access_memories_url
  end
end
