require "application_system_test_case"

class FilesTest < ApplicationSystemTestCase
  setup do
    @file = files(:one)
  end

  test "visiting the index" do
    visit files_url
    assert_selector "h1", text: "Files"
  end

  test "creating a File" do
    visit files_url
    click_on "New File"

    fill_in "Created at", with: @file.created_at
    fill_in "Path", with: @file.path
    click_on "Create File"

    assert_text "File was successfully created"
    click_on "Back"
  end

  test "updating a File" do
    visit files_url
    click_on "Edit", match: :first

    fill_in "Created at", with: @file.created_at
    fill_in "Path", with: @file.path
    click_on "Update File"

    assert_text "File was successfully updated"
    click_on "Back"
  end

  test "destroying a File" do
    visit files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "File was successfully destroyed"
  end
end
