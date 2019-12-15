require "application_system_test_case"

class RandomAccessMemoriesTest < ApplicationSystemTestCase
  setup do
    @random_access_memory = random_access_memories(:one)
  end

  test "visiting the index" do
    visit random_access_memories_url
    assert_selector "h1", text: "Random Access Memories"
  end

  test "creating a Random access memory" do
    visit random_access_memories_url
    click_on "New Random Access Memory"

    click_on "Create Random access memory"

    assert_text "Random access memory was successfully created"
    click_on "Back"
  end

  test "updating a Random access memory" do
    visit random_access_memories_url
    click_on "Edit", match: :first

    click_on "Update Random access memory"

    assert_text "Random access memory was successfully updated"
    click_on "Back"
  end

  test "destroying a Random access memory" do
    visit random_access_memories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Random access memory was successfully destroyed"
  end
end
