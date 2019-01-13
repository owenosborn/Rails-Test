require "application_system_test_case"

class SoundsetsTest < ApplicationSystemTestCase
  setup do
    @soundset = soundsets(:one)
  end

  test "visiting the index" do
    visit soundsets_url
    assert_selector "h1", text: "Soundsets"
  end

  test "creating a Soundset" do
    visit soundsets_url
    click_on "New Soundset"

    fill_in "Name", with: @soundset.name
    click_on "Create Soundset"

    assert_text "Soundset was successfully created"
    click_on "Back"
  end

  test "updating a Soundset" do
    visit soundsets_url
    click_on "Edit", match: :first

    fill_in "Name", with: @soundset.name
    click_on "Update Soundset"

    assert_text "Soundset was successfully updated"
    click_on "Back"
  end

  test "destroying a Soundset" do
    visit soundsets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Soundset was successfully destroyed"
  end
end
