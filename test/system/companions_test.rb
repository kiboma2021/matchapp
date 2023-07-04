require "application_system_test_case"

class CompanionsTest < ApplicationSystemTestCase
  setup do
    @companion = companions(:one)
  end

  test "visiting the index" do
    visit companions_url
    assert_selector "h1", text: "Companions"
  end

  test "should create companion" do
    visit companions_url
    click_on "New companion"

    fill_in "Age", with: @companion.age
    fill_in "Bio", with: @companion.bio
    fill_in "Height", with: @companion.height
    fill_in "Name", with: @companion.name
    click_on "Create Companion"

    assert_text "Companion was successfully created"
    click_on "Back"
  end

  test "should update Companion" do
    visit companion_url(@companion)
    click_on "Edit this companion", match: :first

    fill_in "Age", with: @companion.age
    fill_in "Bio", with: @companion.bio
    fill_in "Height", with: @companion.height
    fill_in "Name", with: @companion.name
    click_on "Update Companion"

    assert_text "Companion was successfully updated"
    click_on "Back"
  end

  test "should destroy Companion" do
    visit companion_url(@companion)
    click_on "Destroy this companion", match: :first

    assert_text "Companion was successfully destroyed"
  end
end
